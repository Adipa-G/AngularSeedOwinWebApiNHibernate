﻿import { fakeAsync, TestBed } from '@angular/core/testing';
import { HttpClientTestingModule, HttpTestingController } from '@angular/common/http/testing';

import { Constants } from '../services/constants';
import { ErrorService } from '../services/errorService';
import { HttpClientWrapper } from './httpClientWrapper';
import { LogService } from '../services/logService';
import { StorageService } from '../services/storageService';

import { AuthService } from './authService';


describe('AuthService', () => {
    let constants: Constants;
    let httpTestingController: HttpTestingController;
    let authService: AuthService;

    beforeEach(() => {
        TestBed.configureTestingModule({
            providers: [
                AuthService,
                Constants,
                ErrorService,
                HttpClientWrapper,
                LogService,
                StorageService
            ],
            imports: [
                HttpClientTestingModule
            ]
        });

        constants = TestBed.inject(Constants);
        httpTestingController = TestBed.inject(HttpTestingController);
        authService = TestBed.inject(AuthService);
    });

    it('should construct', fakeAsync(() => {
        expect(constants).toBeDefined();
        expect(httpTestingController).toBeDefined();
        expect(authService).toBeDefined();
    }));

    it('when authenticate then should call service', fakeAsync(() => {
        const mockResponse = {
            data: [
                { userName: 'Picard' }
            ]
        };

        authService.authenticate(<any>{});

        const req = httpTestingController.expectOne({ method: 'POST', url: 'connect/token' });
        req.flush(mockResponse);
    }));

    it('when clearAuthData then reset auth', fakeAsync(() => {
        authService.clearAuthData();

        expect(authService.currentAuth).toBeDefined();
        expect(authService.currentAuth.isAuth).toBe(false);
    }));
});