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
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
var core_1 = require('angular2/core');
var HttpClient_1 = require('../../common/services/HttpClient');
var Constants_1 = require('../../common/services/Constants');
var UserService = (function () {
    function UserService(httpClient, constants) {
        this.httpClient = httpClient;
        this.constants = constants;
    }
    UserService.prototype.getUsers = function (sortAndPage) {
        return this.httpClient
            .post(this.constants.getServiceBaseUrl() + 'api/Account/list', JSON.stringify(sortAndPage))
            .map(function (res) { return res.json(); });
    };
    UserService.prototype.deleteUser = function (userName) {
        return this.httpClient
            .delete(this.constants.getServiceBaseUrl() + 'api/Account/' + userName)
            .map(function (res) { return res.json(); });
    };
    UserService = __decorate([
        core_1.Injectable(),
        __param(0, core_1.Inject(HttpClient_1.HttpClient)),
        __param(1, core_1.Inject(Constants_1.Constants)), 
        __metadata('design:paramtypes', [HttpClient_1.HttpClient, Constants_1.Constants])
    ], UserService);
    return UserService;
}());
exports.UserService = UserService;
//# sourceMappingURL=UserService.js.map