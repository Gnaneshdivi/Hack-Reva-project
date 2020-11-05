pragma solidity ^0.6.10;

contract revacompany{
    
    struct details{
        string name;
        string lane;
        string city;
        string state;
        int256 pincode;
        uint256 date;
        uint256 month;
        uint256 year;
        uint256 imei;
        string companyLane;
        string companyCity;
        string comapanyState;
        uint256 companyPincode;
        uint256 companyStartDate;
        uint256 addPlantDDMMYYYY;
    }
    
    mapping (uint => details) individualFile;
    
    function IndividualDetails(string memory Name,string memory Lane,string memory City,string memory State,int256 Pincode, uint Date, uint Month, uint Year, uint256 Imei,string memory CompanyLane, string memory CompanyCity, string memory ComapanyState, uint256 CompanyPincode, uint256 CompanyStartDate, uint256 AddPlantDDMMYYYY) public{
        details memory Person;
        Person.name=Name;
        Person.lane = Lane;
        Person.city=City;
        Person.state=State;
        Person.pincode=Pincode;
        Person.date=Date;
        Person.month=Month;
        Person.year=Year;
        Person.imei=Imei;
        Person.companyLane=CompanyLane;
        Person.companyCity=CompanyCity;
        Person.comapanyState=ComapanyState;
        Person.companyPincode=CompanyPincode;
        Person.companyStartDate=CompanyStartDate;
        Person.addPlantDDMMYYYY=AddPlantDDMMYYYY;
        individualFile[Imei]=Person;
    }
    
    function PersonDetails(uint256 Imei) public view returns (string memory PersonName,string memory Personlane,string memory Personcity,string memory Personstate,int256 Personpincode, uint Persondate, uint Personmonth, uint Personyear, uint256 Add_Plant_DDMMYYYY){
        details memory Person = individualFile[Imei];
        PersonName=Person.name;
        Personlane=Person.lane;
        Personcity=Person.city;
        Personstate=Person.state;
        Personpincode=Person.pincode;
        Persondate=Person.date;
        Personmonth=Person.month;
        Personyear=Person.year;
        Add_Plant_DDMMYYYY=Person.addPlantDDMMYYYY;
        return(PersonName,Personlane,Personcity,Personstate,Personpincode,Persondate,Personmonth,Personyear,Add_Plant_DDMMYYYY);
    }
     
     function CompanyDetails(uint256 Imei) public view returns(string memory Company_Lane, string memory Company_City, string memory Comapany_State, uint256 Company_Pincode, uint256 Company_StartDate_DDMMYYYY){
        details memory Person = individualFile[Imei];
        Company_Lane=Person.companyLane;
        Company_City=Person.companyCity;
        Comapany_State=Person.comapanyState;
        Company_Pincode=Person.companyPincode;
        Company_StartDate_DDMMYYYY=Person.companyStartDate;
        return(Company_Lane,Company_City,Comapany_State,Company_Pincode,Company_StartDate_DDMMYYYY);
        }
}

