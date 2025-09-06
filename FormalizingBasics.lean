import FormalizingBasics.Basic

open FormalizingBasics.Interest

-- Example checks and evaluations for time value of money formulas
#check FV_simple_float
#check FV_compound_float
#check FV_continuous_float
#check PV_simple_float
#check PV_compound_float
#check PV_continuous_float

#eval FV_simple_float 100 0.05 2      -- Should output 110.0
#eval FV_compound_float 100 0.05 2    -- Should output 110.25
#eval FV_continuous_float 100 0.05 2  -- Should output about 110.517
#eval PV_simple_float 110 0.05 2      -- Should output 100.0
#eval PV_compound_float 110.25 0.05 2 -- Should output 100.0
#eval PV_continuous_float 110.517 0.05 2 -- Should output about 100.0
