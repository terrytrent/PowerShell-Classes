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
        $colors=[CarColor].GetEnumValues() | Where-Object {$_ -ne 'Unknown'}
        $choice=$null
        $ColorChoice=$null
        function New-ColorChoice()
        {
            Param
            (
                [switch]$First
            )

            $TextColor='Green'

            if(!($First))
            {
                write-host "`nSorry, you must select one of the options available." -ForegroundColor Red
                $TextColor='Yellow'
            }

            $choice=write-host "`nWhich Color do you want to specify?`n$(foreach($i in 1..$($colors.length)){"`n$i. $($colors[$($i - 1)])"})`n`nChoice (#):" -NoNewline -ForegroundColor $TextColor;Read-Host
            return $choice
        }

        $choice=New-ColorChoice -First
        
        do{
            if(($choice -le $($colors.length)) -and ($choice -ge 1))
            {
                $ColorChoice=$($colors[$($choice - 1)])
            }
            else
            {
                $choice=New-ColorChoice
                $ColorChoice=$($colors[$($choice - 1)])
            }
        }
        until(($choice -le $($colors.length)) -and ($choice -ge 1))
        
        $this.color=$ColorChoice
        write-host "`nColor Updated: $($this.color)"
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
        $models=[DodgeModels].GetEnumValues() | Where-Object {$_ -ne 'Unknown'}
        $choice=$null
        $ModelChoice=$null
        function New-ModelChoice()
        {
            Param
            (
                [switch]$First
            )

            $TextColor='Green'

            if(!($First))
            {
                write-host "`nSorry, you must select one of the options available." -ForegroundColor Red
                $TextColor='Yellow'
            }

            $choice=write-host "`nWhich Model do you want to specify?`n$(foreach($i in 1..$($models.length)){"`n$i. $($models[$($i - 1)])"})`n`nChoice (#):" -NoNewline -ForegroundColor $TextColor;Read-Host
            return $choice
        }

        $choice=New-ModelChoice -First
        
        do{
            if(($choice -le $($models.length)) -and ($choice -ge 1))
            {
                $ModelChoice=$($models[$($choice - 1)])
            }
            else
            {
                $choice=New-ModelChoice
                $ModelChoice=$($models[$($choice - 1)])
            }
        }
        until(($choice -le $($models.length)) -and ($choice -ge 1))
        
        $this.model=$ModelChoice
        write-host "`nModel Updated: $($this.model)"
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
        $models=[LincolnModels].GetEnumValues() | Where-Object {$_ -ne 'Unknown'}
        $choice=$null
        $ModelChoice=$null
        function New-ModelChoice()
        {
            Param
            (
                [switch]$First
            )

            $TextColor='Green'

            if(!($First))
            {
                write-host "`nSorry, you must select one of the options available." -ForegroundColor Red
                $TextColor='Yellow'
            }

            $choice=write-host "`nWhich Model do you want to specify?`n$(foreach($i in 1..$($models.length)){"`n$i. $($models[$($i - 1)])"})`n`nChoice (#):" -NoNewline -ForegroundColor $TextColor;Read-Host
            return $choice
        }

        $choice=New-ModelChoice -First
        
        do{
            if(($choice -le $($models.length)) -and ($choice -ge 1))
            {
                $ModelChoice=$($models[$($choice - 1)])
            }
            else
            {
                $choice=New-ModelChoice
                $ModelChoice=$($models[$($choice - 1)])
            }
        }
        until(($choice -le $($models.length)) -and ($choice -ge 1))
        
        $this.model=$ModelChoice
        write-host "`nModel Updated: $($this.model)"
    }
}

class Cadilac : car
{
    [MakeOfCar]$make='Cadilac'
    [CadilacModels]$model

    GetModelList()
    {
        [CadilacModels].GetEnumValues() | Where-Object {$_ -ne 'Unknown'} | %{write-host $_}
    }

    SetModel()
    {
        $models=[CadilacModels].GetEnumValues() | Where-Object {$_ -ne 'Unknown'}
        $choice=$null
        $ModelChoice=$null
        function New-ModelChoice()
        {
            Param
            (
                [switch]$First
            )

            $TextColor='Green'

            if(!($First))
            {
                write-host "`nSorry, you must select one of the options available." -ForegroundColor Red
                $TextColor='Yellow'
            }

            $choice=write-host "`nWhich Model do you want to specify?`n$(foreach($i in 1..$($models.length)){"`n$i. $($models[$($i - 1)])"})`n`nChoice (#):" -NoNewline -ForegroundColor $TextColor;Read-Host
            return $choice
        }

        $choice=New-ModelChoice -First
        
        do{
            if(($choice -le $($models.length)) -and ($choice -ge 1))
            {
                $ModelChoice=$($models[$($choice - 1)])
            }
            else
            {
                $choice=New-ModelChoice
                $ModelChoice=$($models[$($choice - 1)])
            }
        }
        until(($choice -le $($models.length)) -and ($choice -ge 1))
        
        $this.model=$ModelChoice
        write-host "`nModel Updated: $($this.model)"
    }
}