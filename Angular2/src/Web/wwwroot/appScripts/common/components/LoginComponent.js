"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var core_1 = require('angular2/core');
var LoginInfo_1 = require("../../domain/auth/LoginInfo");
var AuthService_1 = require('../services/AuthService');
var LoginComponent = (function () {
    function LoginComponent(authService) {
        this.authService = authService;
        this.authService = authService;
        this.loginInfo = new LoginInfo_1.LoginInfo();
    }
    LoginComponent.prototype.login = function () {
        this.authService.authenticate(this.loginInfo);
    };
    LoginComponent = __decorate([
        core_1.Component({
            selector: 'common-login',
            templateUrl: './templates/common/components/LoginComponent.html'
        }), 
        __metadata('design:paramtypes', [AuthService_1.AuthService])
    ], LoginComponent);
    return LoginComponent;
}());
exports.LoginComponent = LoginComponent;
//# sourceMappingURL=LoginComponent.js.map