Enum MakeOfCar 
{ 
    Unknown; 
    Dodge; 
    Lincoln; 
    Cadilac; 
} 

Enum DodgeModels 
{ 
    Unknown; 
    Challenger; 
    Charger; 
    Dart; 
} 

Enum LincolnModels 
{ 
    Unknown; 
    Navigator; 
    MKX; 
    MKZ; 
} 

Enum CadilacModels 
{ 
    Unknown; 
    Escalade; 
    ATS; 
    CTS; 
} 

Enum CarColor 
{ 
    Unknown; 
    Red; 
    Silver; 
    Black; 
} 

class car 
{ 
    [MakeOfCar]$make; 
    [CarColor]$color; 

    SetColor() 
    { 
        $colors=[CarColor].GetEnumValues() | where {$_ -ne 'Unknown'} 
        $choice=read-host "Which Color do you want to specify?`n$(foreach($i in 1..3){"`n$i $($colors[$($i - 1)])"})`n`nChoice (#)" 
        $ColorChoice=$colors[$($choice - 1)] 

        $this.Color=$ColorChoice 
    } 
} 

class Dodge : car 
{ 
    [MakeOfCar]$make='Dodge' 
    [DodgeModels]$model; 


    GetModelList() 
    { 
        [DodgeModels].GetEnumValues() | where {$_ -ne 'Unknown'} | %{write-host $_} 
    } 

    SetModel() 
    { 
        $models=[DodgeModels].GetEnumValues() | where {$_ -ne 'Unknown'} 
        $choice=read-host "Which Model do you want to specify?`n$(foreach($i in 1..3){"`n$i $($models[$($i - 1)])"})`n`nChoice (#)" 
        $ModelChoice=$models[$($choice - 1)] 

    $this.model=$ModelChoice 
    } 
} 

class Lincoln : car 
{ 
    [MakeOfCar]$make='Cadilac' 
    [LincolnModels]$model 

    GetModelList() 
    { 
        [LincolnModels].GetEnumValues() | where {$_ -ne 'Unknown'} | %{write-host $_} 
    } 

    SetModel() 
    { 
        $models=[LincolnModels].GetEnumValues() | where {$_ -ne 'Unknown'} 
        $choice=read-host "Which Model do you want to specify?`n$(foreach($i in 1..3){"`n$i $($models[$($i - 1)])"})`n`nChoice (#)" 
        $ModelChoice=$models[$($choice - 1)] 

        $this.model=$ModelChoice 
    } 
} 

class Cadilac : car 
{ 
    [MakeOfCar]$make='Cadilac' 
    [CadilacModels]$model 

    GetModelList() 
    { 
        [CadilacModels].GetEnumValues() | where {$_ -ne 'Unknown'} | %{write-host $_} 
    } 

    SetModel() 
    { 
        $models=[CadilacModels].GetEnumValues() | where {$_ -ne 'Unknown'} 
        $choice=read-host "Which Model do you want to specify?`n$(foreach($i in 1..3){"`n$i $($models[$($i - 1)])"})`n`nChoice (#)" 
        $ModelChoice=$models[$($choice - 1)] 

        $this.model=$ModelChoice 
    } 
}