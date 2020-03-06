import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ItemListComponent } from './emart/item/item-list/item-list.component';
import { ItemDisplayComponent } from './emart/item/item-display/item-display.component';
import { CartListComponent } from './emart/cart/cart-list/cart-list.component';
import { BillViewComponent } from './emart/bill/bill-view/bill-view.component';
import { BillListComponent } from './emart/bill/bill-list/bill-list.component';
import { LoginComponent } from './emart/signup/login/login.component';
import { BuyerSignupComponent } from './emart/signup/buyer-signup/buyer-signup.component';
import { SellerSignupComponent } from './emart/signup/seller-signup/seller-signup.component';
import { HttpClientModule } from '@angular/common/http';
import { HeaderComponent } from './emart/header/header.component';



@NgModule({
  declarations: [
    AppComponent,
    ItemListComponent,
    ItemDisplayComponent,
    CartListComponent,
    BillViewComponent,
    BillListComponent,
    LoginComponent,
    BuyerSignupComponent,
    SellerSignupComponent,
    HeaderComponent


  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
