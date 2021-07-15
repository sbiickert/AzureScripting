Get-Disk | Where-Object PartitionStyle -eq 'RAW'|
         Initialize-Disk -PartitionStyle GPT -PassThru |
            New-Volume -FileSystem NTFS -DriveLetter F -FriendlyName 'Data-Volume'
            