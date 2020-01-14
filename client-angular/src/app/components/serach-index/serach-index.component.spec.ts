import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SerachIndexComponent } from './serach-index.component';

describe('SerachIndexComponent', () => {
  let component: SerachIndexComponent;
  let fixture: ComponentFixture<SerachIndexComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SerachIndexComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SerachIndexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
