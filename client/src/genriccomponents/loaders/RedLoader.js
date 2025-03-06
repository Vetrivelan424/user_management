import React from 'react'
import loaderImg from '../../assets/Images/logos/aviv0_logo_4.png'
import '.././styles/GenricComponent.css'
function Loader(props) {
    return (
        <>
            <div className="common-loader-container">
                <img className="common-preloader" src={loaderImg} alt="Loading..." />
            </div>
        </>
    )
}

export default Loader;