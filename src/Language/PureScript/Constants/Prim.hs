-- | Various constants which refer to things in Prim
module Language.PureScript.Constants.Prim where

import Prelude.Compat

import Data.String (IsString)
import Language.PureScript.Names

-- Prim values

undefined :: forall a. (IsString a) => a
undefined = "undefined"

-- Prim

pattern Prim :: ModuleName
pattern Prim = ModuleName "Prim"

pattern Partial :: Qualified (ProperName 'ClassName)
pattern Partial = Qualified (Just Prim) (ProperName "Partial")

pattern Record :: Qualified (ProperName 'TypeName)
pattern Record = Qualified (Just Prim) (ProperName "Record")

pattern Type :: Qualified (ProperName 'TypeName)
pattern Type = Qualified (Just Prim) (ProperName "Type")

pattern Constraint :: Qualified (ProperName 'TypeName)
pattern Constraint = Qualified (Just Prim) (ProperName "Constraint")

pattern Function :: Qualified (ProperName 'TypeName)
pattern Function = Qualified (Just Prim) (ProperName "Function")

pattern Array :: Qualified (ProperName 'TypeName)
pattern Array = Qualified (Just Prim) (ProperName "Array")

pattern Row :: Qualified (ProperName 'TypeName)
pattern Row = Qualified (Just Prim) (ProperName "Row")

-- Prim.Boolean

pattern PrimBoolean :: ModuleName
pattern PrimBoolean = ModuleName "Prim.Boolean"

booleanTrue :: Qualified (ProperName 'TypeName)
booleanTrue = Qualified (Just PrimBoolean) (ProperName "True")

booleanFalse :: Qualified (ProperName 'TypeName)
booleanFalse = Qualified (Just PrimBoolean) (ProperName "False")

-- Prim.Coerce

pattern PrimCoerce :: ModuleName
pattern PrimCoerce = ModuleName "Prim.Coerce"

pattern Coercible :: Qualified (ProperName 'ClassName)
pattern Coercible = Qualified (Just PrimCoerce) (ProperName "Coercible")

-- Prim.Ordering

pattern PrimOrdering :: ModuleName
pattern PrimOrdering = ModuleName "Prim.Ordering"

orderingLT :: Qualified (ProperName 'TypeName)
orderingLT = Qualified (Just PrimOrdering) (ProperName "LT")

orderingEQ :: Qualified (ProperName 'TypeName)
orderingEQ = Qualified (Just PrimOrdering) (ProperName "EQ")

orderingGT :: Qualified (ProperName 'TypeName)
orderingGT = Qualified (Just PrimOrdering) (ProperName "GT")

-- Prim.Row

pattern PrimRow :: ModuleName
pattern PrimRow = ModuleName "Prim.Row"

pattern RowUnion :: Qualified (ProperName 'ClassName)
pattern RowUnion = Qualified (Just PrimRow) (ProperName "Union")

pattern RowNub :: Qualified (ProperName 'ClassName)
pattern RowNub = Qualified (Just PrimRow) (ProperName "Nub")

pattern RowCons :: Qualified (ProperName 'ClassName)
pattern RowCons = Qualified (Just PrimRow) (ProperName "Cons")

pattern RowLacks :: Qualified (ProperName 'ClassName)
pattern RowLacks = Qualified (Just PrimRow) (ProperName "Lacks")

-- Prim.RowList

pattern PrimRowList :: ModuleName
pattern PrimRowList = ModuleName "Prim.RowList"

pattern RowToList :: Qualified (ProperName 'ClassName)
pattern RowToList = Qualified (Just PrimRowList) (ProperName "RowToList")

pattern RowListNil :: Qualified (ProperName 'TypeName)
pattern RowListNil = Qualified (Just PrimRowList) (ProperName "Nil")

pattern RowListCons :: Qualified (ProperName 'TypeName)
pattern RowListCons = Qualified (Just PrimRowList) (ProperName "Cons")

-- Prim.Int

pattern PrimInt :: ModuleName
pattern PrimInt = ModuleName "Prim.Int"

pattern IntAdd :: Qualified (ProperName 'ClassName)
pattern IntAdd = Qualified (Just PrimInt) (ProperName "Add")

pattern IntCompare :: Qualified (ProperName 'ClassName)
pattern IntCompare = Qualified (Just PrimInt) (ProperName "Compare")

pattern IntMul :: Qualified (ProperName 'ClassName)
pattern IntMul = Qualified (Just PrimInt) (ProperName "Mul")

pattern IntToString :: Qualified (ProperName 'ClassName)
pattern IntToString = Qualified (Just PrimInt) (ProperName "ToString")

-- Prim.Symbol

pattern PrimSymbol :: ModuleName
pattern PrimSymbol = ModuleName "Prim.Symbol"

pattern SymbolCompare :: Qualified (ProperName 'ClassName)
pattern SymbolCompare = Qualified (Just PrimSymbol) (ProperName "Compare")

pattern SymbolAppend :: Qualified (ProperName 'ClassName)
pattern SymbolAppend = Qualified (Just PrimSymbol) (ProperName "Append")

pattern SymbolCons :: Qualified (ProperName 'ClassName)
pattern SymbolCons = Qualified (Just PrimSymbol) (ProperName "Cons")

-- Prim.TypeError

pattern PrimTypeError :: ModuleName
pattern PrimTypeError = ModuleName "Prim.TypeError"

pattern Fail :: Qualified (ProperName 'ClassName)
pattern Fail = Qualified (Just PrimTypeError) (ProperName "Fail")

pattern Warn :: Qualified (ProperName 'ClassName)
pattern Warn = Qualified (Just PrimTypeError) (ProperName "Warn")

primModules :: [ModuleName]
primModules = [Prim, PrimBoolean, PrimCoerce, PrimOrdering, PrimRow, PrimRowList, PrimSymbol, PrimInt, PrimTypeError]

typ :: forall a. (IsString a) => a
typ = "Type"

kindOrdering :: forall a. (IsString a) => a
kindOrdering = "Ordering"

kindRowList :: forall a. (IsString a) => a
kindRowList = "RowList"

symbol :: forall a. (IsString a) => a
symbol = "Symbol"

doc :: forall a. (IsString a) => a
doc = "Doc"

row :: forall a. (IsString a) => a
row = "Row"

constraint :: forall a. (IsString a) => a
constraint = "Constraint"

-- Modules

prim :: forall a. (IsString a) => a
prim = "Prim"

moduleBoolean :: forall a. (IsString a) => a
moduleBoolean = "Boolean"

moduleCoerce :: forall a. (IsString a) => a
moduleCoerce = "Coerce"

moduleOrdering :: forall a. (IsString a) => a
moduleOrdering = "Ordering"

moduleRow :: forall a. (IsString a) => a
moduleRow = "Row"

moduleRowList :: forall a. (IsString a) => a
moduleRowList = "RowList"

moduleSymbol :: forall a. (IsString a) => a
moduleSymbol = "Symbol"

moduleInt :: forall a. (IsString a) => a
moduleInt = "Int"

typeError :: forall a. (IsString a) => a
typeError = "TypeError"
