-- Common problems
	-- * Lost updates - two updates updating the same record without locks in place,
--     the first update will be overwritten and lost.
--     You prevent this by using logs. Audit your statements.
--     This will allow an update to commit before another update runs
--     * Dirty reads - reading data after an update failed and it hasnt rolled
--     back yet. Update a row, attempt 2nd change... and it fails
--     Now a select statement is executed before the update was rolled back.
--     Reading uncommitted data
--     MySQL solves this using isolation levels like READ COMMITTED
--     * Non-repeating reads - In a transaction you select a field at the start
--     and then maybe again at the end as a subquery. What if that field got updated
--     between those two statemtents? You will receive two different values from the
--     same statement.
--     This is an inconsistent read
--     Not a big deal really. But it can be solved by using isolation levels, namely
--     REPEATABLE READ to isolate your statement from changes to the DB. You will read
--     the same values even if the data changed in the mean time. You 
--     * Phantom reads - a query returns results based on if customer has 10 points or more.
--     After the result is returned, an update occurs that increases a customers points from
--     4 to 12. This customer will not be included in the previous query.
--     Not a big deal.
--     Solved using an isolation level called SERIALIZABLE which means the select query will
--     be aware of changes to the data made by other transactions. This is the higest level
--     of isolation you can apply to a transaction. Resource heavy, difficult to scale.
--     Save for when absolutly necessary.