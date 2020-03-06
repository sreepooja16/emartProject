import { Injectable } from '@angular/core';

import { Seller } from './emart/seller';

@Injectable({

  providedIn: 'root'

})

export class LoginService {



  loggedIn: boolean;
  buyer: any;
  seller: Seller;
  constructor() { }



  loginBuyer(buyer: any) {

    this.buyer = buyer;
    this.loggedIn = true;

  }

 loginSeller(seller: Seller) {

    this.seller = seller;
    this.loggedIn = true;

  }

  logout() {

    this.loggedIn = false;
    this.buyer = null;
    this.seller = null;

  }

}