EXPLAIN SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1;
EXPLAIN (SELECT 1 UNION ALL SELECT 1) UNION ALL SELECT 1;
EXPLAIN SELECT 1 UNION (SELECT 1 UNION ALL SELECT 1);

EXPLAIN SELECT 1 UNION SELECT 1 UNION DISTINCT SELECT 1;
EXPLAIN (SELECT 1 UNION DISTINCT SELECT 1) UNION DISTINCT SELECT 1;
EXPLAIN SELECT 1 UNION DISTINCT (SELECT 1 UNION SELECT 1);

EXPLAIN (SELECT 1 UNION ALL (SELECT 1 UNION ALL (SELECT 1 UNION ALL SELECT 1 UNION SELECT 1))) UNION ALL (((SELECT 1) UNION (SELECT 1 UNION ALL (SELECT 1 UNION ALL (SELECT 1 UNION SELECT 1 ) UNION DISTINCT SELECT 1))));

EXPLAIN (((((((((((((((SELECT 1 UNION ALL SELECT 1) UNION SELECT 1))))))))))))));
EXPLAIN (((((((((((((((((((((((((((((SELECT 1 UNION SELECT 1)))))))))))))))))))))))))))));
EXPLAIN (((((((((((((((((((((((((((((SELECT 1 UNION SELECT 1)))))))))))))))))))))))))))));

SET union_default_mode='ALL';

EXPLAIN SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1;
EXPLAIN (SELECT 1 UNION ALL SELECT 1) UNION ALL SELECT 1;
EXPLAIN SELECT 1 UNION (SELECT 1 UNION ALL SELECT 1);

EXPLAIN SELECT 1 UNION SELECT 1 UNION DISTINCT SELECT 1;
EXPLAIN (SELECT 1 UNION DISTINCT SELECT 1) UNION DISTINCT SELECT 1;
EXPLAIN SELECT 1 UNION DISTINCT (SELECT 1 UNION SELECT 1);

EXPLAIN (SELECT 1 UNION ALL (SELECT 1 UNION ALL (SELECT 1 UNION ALL SELECT 1 UNION SELECT 1))) UNION ALL (((SELECT 1) UNION (SELECT 1 UNION ALL (SELECT 1 UNION ALL (SELECT 1 UNION SELECT 1 ) UNION DISTINCT SELECT 1))));

EXPLAIN (((((((((((((((SELECT 1 UNION ALL SELECT 1) UNION SELECT 1))))))))))))));
EXPLAIN (((((((((((((((((((((((((((((SELECT 1 UNION SELECT 1)))))))))))))))))))))))))))));
EXPLAIN (((((((((((((((((((((((((((((SELECT 1 UNION SELECT 1)))))))))))))))))))))))))))));