import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MultiservicioschekComponent } from './multiservicioschek.component';

describe('MultiservicioschekComponent', () => {
  let component: MultiservicioschekComponent;
  let fixture: ComponentFixture<MultiservicioschekComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MultiservicioschekComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MultiservicioschekComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
