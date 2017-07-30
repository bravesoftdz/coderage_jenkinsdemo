unit testcalc;

interface
uses
  DUnitX.TestFramework,
  calculate;

type

  [TestFixture]
  TTestCalc = class(TObject)
  private
    calc:TCalculate;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2,3')]
    [TestCase('TestB','3,4,7')]
    procedure Test2(const A : uint32;const B : uint32; const R: uint32);
  end;

implementation

procedure TTestCalc.Setup;
begin
  calc := TCalculate.Create;
end;

procedure TTestCalc.TearDown;
begin
  calc.DisposeOf;
end;

procedure TTestCalc.Test2(const A : uint32;const B : uint32; const R: uint32);
var
  v: uint32;
begin
  //arrange
  //act
  v := calc.add(A,B);
  //assert
  if v = r then begin
    Assert.Pass('values match');

  end else begin
      Assert.Fail('values do not match');
  end;


end;

initialization
  TDUnitX.RegisterTestFixture(TTestCalc);
end.
