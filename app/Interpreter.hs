import Evaluator
import LispVal
import SimpleParser
import LispError
import System.Environment

main :: IO ()
main = do
    args <- getArgs 
    let evaled = fmap show $ readExpr (head args) >>= eval
    putStrLn $ extractValue $ trapError evaled
