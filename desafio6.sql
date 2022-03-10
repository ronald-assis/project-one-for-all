SELECT
  MIN(payment_plans.plan_price) AS 'faturamento_minimo',
  ROUND(MAX(payment_plans.plan_price), 2) AS 'faturamento_maximo',
  ROUND(AVG(payment_plans.plan_price), 2) AS 'faturamento_medio',
  ROUND(SUM(payment_plans.plan_price), 2) AS 'faturamento_total'
FROM
  SpotifyClone.payment_plans AS payment_plans
  INNER JOIN SpotifyClone.users ON payment_plans.plan_id = users.user_plan;
