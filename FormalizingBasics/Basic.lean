import Mathlib


namespace FormalizingBasics
namespace Interest

-- Time decay / discount factor
noncomputable def discount_factor (r t : ℝ) : ℝ := Real.exp (-r * t)
def discount_factor_float (r t : Float) : Float := Float.exp (-r * t)


-- Simple interest future value
def FV_simple (P r t : ℝ) : ℝ := P * (1 + r * t)
def FV_simple_float (P r t : Float) : Float := P * (1 + r * t)

-- Simple interest present value
noncomputable def PV_simple (F r t : ℝ) : ℝ := F / (1 + r * t)
def PV_simple_float (F r t : Float) : Float := F / (1 + r * t)


-- Compound interest future value
def FV_compound (P r : ℝ) (n : ℕ) : ℝ := P * (1 + r) ^ n
def FV_compound_float (P r : Float) (n : Nat) : Float := P * Float.pow (1 + r) (Float.ofNat n)

-- Compound interest present value
noncomputable def PV_compound (F r : ℝ) (n : ℕ) : ℝ := F / (1 + r) ^ n
def PV_compound_float (F r : Float) (n : Nat) : Float := F / Float.pow (1 + r) (Float.ofNat n)


-- Continuously compounding future value
noncomputable def FV_continuous (P r t : ℝ) : ℝ := P * Real.exp (r * t)
def FV_continuous_float (P r t : Float) : Float := P * Float.exp (r * t)

-- Continuously compounding present value
noncomputable def PV_continuous (F r t : ℝ) : ℝ := F * Real.exp (-r * t)
def PV_continuous_float (F r t : Float) : Float := F * Float.exp (-r * t)

end Interest
end FormalizingBasics
