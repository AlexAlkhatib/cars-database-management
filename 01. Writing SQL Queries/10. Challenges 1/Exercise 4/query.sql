/*
	I'm looking for a Dodge from the 60s, but I could take a Ford or Triumph from the 70s
*/

SELECT brand, model, year, sold FROM cars
	WHERE ((brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
	OR (brand IN ('Ford', 'Triumph') AND year BETWEEN 1970 AND 1979))
	AND sold IS NOT TRUE;

/* FALSE != IS NOT TRUE (IF THERE ARE NULL VALUES) */