

module Network.Ftp.ReplyCode where

data ReplyCode
  = RC_200 | RC_500 | RC_501 | RC_202 | RC_502 | RC_503 | RC_504

  | RC_110 | RC_211 | RC_212 | RC_213 | RC_214 | RC_215

  | RC_120 | RC_220 | RC_221 | RC_421 | RC_125 | RC_225
  | RC_425 | RC_226 | RC_426 | RC_227

  | RC_230 | RC_530 | RC_331 | RC_332 | RC_532 | RC_150
  | RC_250 | RC_257 | RC_350 | RC_450 | RC_550 | RC_451
  | RC_551 | RC_452 | RC_552 | RC_553
  | UndedinedReplyCode
  deriving(Eq, Ord, Show)

replyCode2Int :: ReplyCode -> Int
replyCode2Int rc = case rc of
  RC_200 -> 200
  RC_500 -> 500
  RC_501 -> 501
  RC_202 -> 202
  RC_502 -> 502
  RC_503 -> 503
  RC_504 -> 504
  RC_110 -> 110
  RC_211 -> 211
  RC_212 -> 212
  RC_213 -> 213
  RC_214 -> 214
  RC_215 -> 215
  RC_120 -> 120
  RC_220 -> 220
  RC_221 -> 221
  RC_421 -> 421
  RC_125 -> 125
  RC_225 -> 225
  RC_425 -> 425
  RC_226 -> 226
  RC_426 -> 426
  RC_227 -> 227
  RC_230 -> 230
  RC_530 -> 530
  RC_331 -> 331
  RC_332 -> 332
  RC_532 -> 532
  RC_150 -> 150
  RC_250 -> 250
  RC_257 -> 257
  RC_350 -> 350
  RC_450 -> 450
  RC_550 -> 550
  RC_451 -> 451
  RC_551 -> 551
  RC_452 -> 452
  RC_552 -> 552
  RC_553 -> 553
  UndedinedReplyCode -> error "undefined reply code"


int2ReplyCode :: Int -> ReplyCode
int2ReplyCode rc = case rc of
  200 -> RC_200
  500 -> RC_500
  501 -> RC_501
  202 -> RC_202
  502 -> RC_502
  503 -> RC_503
  504 -> RC_504
  110 -> RC_110
  211 -> RC_211
  212 -> RC_212
  213 -> RC_213
  214 -> RC_214
  215 -> RC_215
  120 -> RC_120
  220 -> RC_220
  221 -> RC_221
  421 -> RC_421
  125 -> RC_125
  225 -> RC_225
  425 -> RC_425
  226 -> RC_226
  426 -> RC_426
  227 -> RC_227
  230 -> RC_230
  530 -> RC_530
  331 -> RC_331
  332 -> RC_332
  532 -> RC_532
  150 -> RC_150
  250 -> RC_250
  257 -> RC_257
  350 -> RC_350
  450 -> RC_450
  550 -> RC_550
  451 -> RC_451
  551 -> RC_551
  452 -> RC_452
  552 -> RC_552
  553 -> RC_553
  _ -> UndedinedReplyCode

replyCode2String :: ReplyCode -> String
replyCode2String rc = case rc of
  RC_200 -> "Command okay."
  RC_500 -> "Syntax error, command unrecognized."
  RC_501 -> "Syntax error in parameters or arguments."
  RC_202 -> "Command not implemented, superfluous at this site."
  RC_502 -> "Command not implemented."
  RC_503 -> "Bad sequence of commands."
  RC_504 -> "Command not implemented for that parameter."
  RC_110 -> "Restart marker reply."
  RC_211 -> "System status, or system help reply."
  RC_212 -> "Directory status."
  RC_213 -> "File status."
  RC_214 -> "Help message."
  RC_215 -> "{NAME} system type."
  RC_120 -> "Service ready in {NNN} minutes."
  RC_220 -> "Service ready for new user."
  RC_221 -> "Service closing control connection."
  RC_421 -> "Service not available, closing control connection."
  RC_125 -> "Data connection already open; transfer starting."
  RC_225 -> "Data connection open; no transfer in progress."
  RC_425 -> "Can't open data connection."
  RC_226 -> "Closing data connection."
  RC_426 -> "Connection closed; transfer aborted."
  RC_227 -> "Entering Passive Mode (h1,h2,h3,h4,p1,p2)."
  RC_230 -> "User logged in, proceed."
  RC_530 -> "Not logged in."
  RC_331 -> "User name okay, need password."
  RC_332 -> "Need account for login."
  RC_532 -> "Need account for storing files."
  RC_150 -> "File status okay; about to open data connection."
  RC_250 -> "Requested file action okay, completed."
  RC_257 -> "{PATHNAME} created."
  RC_350 -> "Requested file action pending further information."
  RC_450 -> "Requested file action not taken. File unavailable (e.g., file busy)."
  RC_550 -> "Requested action not taken. File unavailable (e.g., file not found, no access)."
  RC_451 -> "Requested action aborted. Local error in processing."
  RC_551 -> "equested action aborted. Page type unknown."
  RC_452 -> "Requested action not taken. Insufficient storage space in system."
  RC_552 -> "Requested file action aborted. Exceeded storage allocation (for current directory or dataset)."
  RC_553 -> "Requested action not taken. File name not allowed."
  UndedinedReplyCode -> error "undefined reply code"
