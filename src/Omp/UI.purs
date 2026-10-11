module Omp.UI
  ( Context
  , pasteToEditor
  ) where

import Effect (Effect)

foreign import data Context :: Type

-- | Inserts text through omp's native composer paste path. In interactive mode,
-- | the host handles existing draft text, attachments, and cursor placement.
-- | `false` means no paste operation is exposed; host errors propagate.
foreign import pasteToEditor :: Context -> String -> Effect Boolean
