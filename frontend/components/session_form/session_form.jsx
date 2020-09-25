import React from 'react';
import { Link } from 'react-router-dom';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            email: '',
            username: '',
            password: '',
            artist_name: '',
            genre: '',
            location: ''
        };

        this.handleSubmit = this.handleSubmit.bind(this);
    }


    componentWillUnmount() {
        if (this.props.errors.length > 0) {
            this.props.clearErrors();
        }
    }


    update(field) {
        return e => this.setState({ [field]: e.currentTarget.value });
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    renderErrors() {
        return (
            <ul>
                {this.props.errors.map((error, i) => (
                    <li className="error-li" key={`error-${i}`}>
                        {error}
                    </li>
                ))}
            </ul>
        );
    }

    
    renderLoginEmailUsername(formType) {
        if (formType === "login") {
            
            return (
                <div className="something">
                    <label className='form-label'>Email/Username:</label>
                    <input type="text" value={this.state.username} onChange={this.update('username')} className="form-input" />
                </div>
            )
        }
    }




    
    renderPassword(formType) {
        if (formType === "signup" || formType === "login") {
            return (
                <div className="something">
                    <label className="form-label">Password:</label>
                    <input type="password" value={this.state.password} onChange={this.update('password')} className="form-input" />
                </div>
            )
        }
    }

    renderEmail(formType) {
        if (formType === "signup") {
            return (
            <div className="something">
                <label className='form-label'>Email:</label>
                <input type="text" value={this.state.email} onChange={this.update('email')} className="form-input" />
            </div>
            )
        }
    }

    renderUsername(formType) {
        if (formType === "signup") {
            return (
                <div className="something">
                    <label className='form-label'>Username:</label>
                    <input type="text" value={this.state.username} onChange={this.update('username')} className="form-input" />
                </div>
            )
        }
    }
    
    renderArtistName(formType) {
        if (formType === "signup") {
            return (
                <div className="something" id='artist-name'>
                    <label className='form-label'>Artist/Band Name:</label>
                    <input type="text" value={this.state.artist_name} onChange={this.update('artist_name')} className="form-input" />
                </div>
            )
        }
    }

    renderGenre(formType) {
        if (formType === "signup") {
            return (
                <div className="something">
                    <label className='form-label'>Genre:</label>
                    <input type="text" value={this.state.genre} onChange={this.update('genre')} className="form-input" />
                </div>
            )
        }
    }

    renderLocation(formType) {
        if (formType === "signup") {
            return (
                <div className="something">
                    <label className='form-label'>Location:</label>
                    <input type="text" value={this.state.location} onChange={this.update('location')} className="form-input" />
                </div>
            )
        }
    }


    renderLogin(formType) {
        if (formType === 'signup') {
            return(
                <div className="signup-to-login-link">
                    <p className="already-account?">Already have an account?
                        <Link className='login-link1' to={`/login`}>  Log In</Link>
                    </p>
                </div>
            )
        }
    } 

 


    render() {
        return (
            <div className='session-parent-container'>
                <div className="session-form-header-container">
                    <Link to="/" className="session-header-link">
                        <h1>
                            <div className="session-square-logo">▰
                                <div className='session-logo'>foosiccamp</div>
                            </div>
                        </h1>
                    </Link>
                </div>
                <div className='center'>
                    <form onSubmit={this.handleSubmit} className="session-form1-box">
                        <div className="session-form2-box">
                            {this.props.formType === 'login' ? <h3 className="session-header">Log In</h3> : <h3 className="session-header">Sign Up</h3>}
                            {this.renderErrors()}
                            <div className="session-form">
                                {this.renderArtistName(this.props.formType)}
                                {this.renderEmail(this.props.formType)}
                                {this.renderUsername(this.props.formType)}
                                {this.renderLoginEmailUsername(this.props.formType)}
                                {this.renderPassword(this.props.formType)}
                                {this.renderGenre(this.props.formType)}
                                {this.renderLocation(this.props.formType)}
                                <div className="session-buttons">
                                    {this.props.formType === 'login' ?
                                    <button className="session-submit" type="submit" value={this.props.formType}>Log In</button> :
                                    <button className="session-submit" type="submit" value={this.props.formType}>Sign Up</button>}
                                </div>
                                {this.renderLogin(this.props.formType)}  
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        );
    }
}

export default SessionForm;
