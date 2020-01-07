
SELECT count(1)
FROM sys.conversation_endpoints ce
LEFT JOIN sys.services s
ON ce.service_id = s.service_id
LEFT JOIN sys.service_contracts sc
ON ce.service_contract_id = sc.service_contract_id;


declare @Sql nvarchar(max) = ''


SELECT top 100  @Sql = @Sql +  'end conversation '+ ''''+convert(varchar(128),conversation_handle)+''''+' with cleanup;' + CHAR(13) 
FROM sys.conversation_endpoints ce
LEFT JOIN sys.services s
ON ce.service_id = s.service_id
LEFT JOIN sys.service_contracts sc
ON ce.service_contract_id = sc.service_contract_id

WHILE @Sql <> ''
begin 
	exec( @Sql)

	select @Sql =''
	SELECT top 1000  @Sql = @Sql +  'end conversation '+ ''''+convert(varchar(128),conversation_handle)+''''+' with cleanup;' + CHAR(13) 
	FROM sys.conversation_endpoints ce
	LEFT JOIN sys.services s
	ON ce.service_id = s.service_id
	LEFT JOIN sys.service_contracts sc
	ON ce.service_contract_id = sc.service_contract_id
END
