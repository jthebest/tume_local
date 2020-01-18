import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MultiservicesDropdownComponent } from './multiservices-dropdown.component';

describe('MultipleselectDropdownComponent', () => {
  let component: MultiservicesDropdownComponent;
  let fixture: ComponentFixture<MultiservicesDropdownComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MultiservicesDropdownComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MultiservicesDropdownComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
