import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';

@Component({
  selector: 'app-nav-index',
  templateUrl: './nav-index.component.html',
  styleUrls: ['./nav-index.component.css']
})
export class NavIndexComponent implements OnInit {

  constructor() { }

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

}
