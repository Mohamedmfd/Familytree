import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.scss']
})
export class ContactComponent implements OnInit {
  name!: string;
  description!: string;
  birthDate!: Date;
  year!: number;

  ngOnInit() {
    this.name = 'Moey';
    this.description = 'New contact !';
    this.birthDate = new Date();
    this.year = 6;
  }

}
