import { Component, OnInit, DoCheck } from '@angular/core';
import { UserService } from '../../services/user.service'; 
import * as $ from 'jquery';

@Component({
  selector: 'app-nav-index',
  templateUrl: './nav-index.component.html',
  styleUrls: ['./nav-index.component.css']//,
 // providers: [UserService]
})

export class NavIndexComponent implements OnInit, DoCheck {
  
  public identity;
  public token;
  
  constructor(
		private _userService: UserService
	){
		this.identity = this._userService.getIdentity();
		this.token = this._userService.getToken();
	}

  ngOnInit() {

    $(document).ready(function () {
      // $('.image-toggler').click(function () {
      //   $('.image-toggle').hide();
      //   $($(this).attr('data-image-id')).show();
      //   //$(this).find('span').toggleClass('glyphicon-arrow-right').toggleClass('glyphicon-arrow-left');
      // });
    //   $('li > a').click(function () {
    //     $('li').removeClass();
    //     $(this).parent().addClass('active');
    //   });
     });
  }

  ngDoCheck(){
		this.identity = this._userService.getIdentity();
		this.token = this._userService.getToken();
	}

}
