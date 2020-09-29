class User < ApplicationRecord

    validates :password_digest, :session_token, :artist_name, :location, presence: true
    validates :username, :email, presence: true, uniqueness: true
    validates :password, length: { minimum: 6, allow_nil: true }

    before_validation :ensure_session_token

    has_many :genre_joins, :as => :genreable

    has_many :genres,
        through: :genre_joins,
        source: :genre

    has_many :tracks,
        class_name: :Track,
        foreign_key: :artist_id

    has_many :albums,
        class_name: :Album,
        foreign_key: :artist_id


    has_one_attached :pic

    attr_reader :password


    def self.find_by_credentials(identifier, password)
        user = User.find_by(username: identifier)

        if user && user.is_password?(password)
            return nil unless user && user.is_password?(password)
        else
            user = User.find_by(email: identifier)
            return nil unless user && user.is_password?(password)
        end
        user
    end

    



    def self.find_by_email(email, password)
        user = User.find_by(email: email)
        user && user.is_password?(password) ? user : nil
    end

    def self.find_by_username(username, password)
        user = User.find_by(email: email)
        user && user.is_password?(password) ? user : nil
    end




    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password);
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end


    def reset_session_token!
        self.session_token = User.generate_unique_session_token
        self.save!
        self.session_token
    end


    private

    def self.generate_unique_session_token
        begin
            token = SecureRandom::urlsafe_base64(16)
        end while User.exists?(session_token: token)

        token
    end


    def ensure_session_token
        self.session_token ||= User.generate_unique_session_token
    end

end

