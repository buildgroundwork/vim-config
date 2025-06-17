if !empty($GEMINI_API_KEY)
  let g:vim_ai_google_api_key = $GEMINI_API_KEY
  let g:vim_ai_provider_google_api_key = $GEMINI_API_KEY
else
  echoerr "GEMINI_API_KEY is not set"
endif

let g:vim_ai_provider = 'google'
