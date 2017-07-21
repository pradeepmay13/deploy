import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MdfFormbuilderComponent } from './mdf-formbuilder.component';

describe('MdfFormbuilderComponent', () => {
  let component: MdfFormbuilderComponent;
  let fixture: ComponentFixture<MdfFormbuilderComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MdfFormbuilderComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MdfFormbuilderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
