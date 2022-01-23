-- | Common additional rendering modes like the ones for numbers.
module Text.Interpolation.Nyan.RModes.CommonExtra where

import Fmt (Builder)

import Text.Interpolation.Nyan.Core
import Text.Interpolation.Nyan.RModes.Buildable (rmode')

-- * Literals

-- One can say these are useful only for toy examples, but there are
-- actual real-life cases when literals are needed. For instance:
--
-- [int||Switch is #l{ if isEnabled then "enabled" else "disabled" }|]

-- | Rendering mode for string literals when @-XOverloadedStrings@ extension
-- is enabled.
rmode'l :: RMode Builder
rmode'l = RMode id

-- | Render mode for decimal number literals.
rmode'd :: RMode Integer
rmode'd = rmode'

-- | Render mode for decimal number literals.
-- Alias for 'rmode'd'.
rmode'n :: RMode Integer
rmode'n = rmode'd
