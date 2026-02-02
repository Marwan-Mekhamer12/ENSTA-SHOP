//
//  APIsDocuments.swift
//  ENSTA SHOP
//
//  Created by Marwan Mekhamer on 19/01/2026.
//

import Foundation

// http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/


struct Addresses {
    let GetAddresses = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Addresses"  // GET
    let POSTAddresses = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Addresses"  // POST
    let PUTAddresses = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Addresses"  // PUT
    let DELETEAddresses = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Addresses/Delete/{id}"  // DELETE
}

struct Colors {
    let colors = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Colors"  // GET
}

struct Complaints {
    let complaints = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Complaints"  // POST  شكاوي
}

struct ContactUs {
    let ContactUs = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/ContactUs/ContactUs" // GET
}

struct Evaluations {  // التقييمات
    let GetEvaluationByProductId = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Evaluations/GetEvaluationByProductId/{id}"  // GET
    let AddProduct = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Evaluations/AddProduct"  // POST
    let UpdateProduct = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Evaluations/UpdateProduct"  // PUT
    let DeleteProduct = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Evaluations/DeleteProduct/{id}"  //DELETE
    let GetEvaluationByShopDataId = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Evaluations/GetEvaluationByShopDataId/{id}"  // GET
    let AddShop = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Evaluations/AddShop"  // POST
    let UpdateShop = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Evaluations/UpdateShop"  // PUT
    let DeleteShop = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Evaluations/DeleteShop/{id}"  // DELETE
}

struct ExternalLogin {
    let GoogleLogin = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/ExternalLogin/GoogleLogin" // POST
    let FacebookLogin = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/ExternalLogin/FacebookLogin" // POST
    let AppleLogin = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/ExternalLogin/AppleLogin"  // POST
}

struct Favorites {
    let GetProductsFavorite = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/GetProductsFavorite"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
    let  = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Favorites/"
}

struct Users {
    let ConfirmCode = "http://alamatit-002-site2.atempurl.com/api/Users/ConfirmCode" // POST
    let ReSendCode = "http://alamatit-002-site2.atempurl.com/api/Users/ReSendCode"   // POST
    let login = "http://alamatit-002-site2.atempurl.com/api/Users/login"             // POST
    let logout = "http://alamatit-002-site2.atempurl.com/api/Users/logout"           // POST
    let DeleteAccount = "http://alamatit-002-site2.atempurl.com/api/Users/DeleteAccount"    // POST
    let UpdateUserProfile = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateUserProfile"  // PUT
    let GetUserInfo = "http://alamatit-002-site2.atempurl.com/api/Users/GetUserInfo"  // GET
    let AddDeviceToken = "http://alamatit-002-site2.atempurl.com/api/Users/AddDeviceToken" // POST
    let RemoveDeviceToken = "http://alamatit-002-site2.atempurl.com/api/Users/RemoveDeviceToken"  // DELETE
    let UpdateLocation = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation"  // PUT
}

struct Products {
    let getProducts = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Products/Get/{shopId}"   // GET
    let GetById = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Products/GetById/{id}"  // GET
    let GetSimilar = "http://alamatit-002-site2.atempurl.com/api/Users/UpdateLocation/api/Products/GetSimilar/{productId}" // GET
}

// GetSimilar
