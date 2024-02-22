CREATE TABLE department (
  id INTEGER,
  name VARCHAR(255),
  CONSTRAINT [PK_department] PRIMARY KEY  ([id])
);

CREATE TABLE employees (
        id INTEGER,
        department_id INTEGER,
        name VARCHAR(255),
        CONSTRAINT [PK_employees] PRIMARY KEY  ([id]),
		FOREIGN KEY ([department_id]) REFERENCES [department] ([id])
);

CREATE TABLE customer (
        id INTEGER,
        customer_name VARCHAR(255),
        location VARCHAR(255),
        CONSTRAINT [PK_customer] PRIMARY KEY  ([id])
);

CREATE TABLE contract (
        id INTEGER,
        customer_id INTEGER,
        amount INTEGER,
        CONSTRAINT [PK_contract] PRIMARY KEY  ([id]),
		FOREIGN KEY ([customer_id]) REFERENCES [customer] ([id])
);

CREATE TABLE executor (
	tab_no INTEGER,
	contract_id INTEGER,
	CONSTRAINT [PK_executor] PRIMARY KEY  ([tab_no], [contract_id]),
	FOREIGN KEY ([tab_no]) REFERENCES [employees] ([id]),
	FOREIGN KEY ([contract_id]) REFERENCES [contract] ([id])
);