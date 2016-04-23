﻿import {Injectable, Inject} from 'angular2/core';
import {Http, Response} from 'angular2/http';

import {SortAndPage} from '../../domain/common/SortAndPage';
import {UserInfo} from '../../domain/admin/UserInfo';

import {HttpClient} from '../../common/services/HttpClient';
import {Constants} from '../../common/services/Constants';

@Injectable()
export class UserService {
    private httpClient: HttpClient;
    private constants: Constants;

    constructor( @Inject(HttpClient) httpClient: HttpClient,
        @Inject(Constants) constants: Constants) {
        this.httpClient = httpClient;
        this.constants = constants;
    }

    public getUsers(sortAndPage : SortAndPage) {
        return this.httpClient
            .post(this.constants.getServiceBaseUrl() + 'api/Account/list', JSON.stringify(sortAndPage))
            .map((res: Response) => res.json());
    }

    public deleteUser(userName: string) {
        return this.httpClient
            .delete(this.constants.getServiceBaseUrl() + 'api/Account/' + userName)
            .map((res: Response) => res.json());
    }
}