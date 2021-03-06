import FizzBuzzSpec
import SumSpec
import CodeWars.Kyu5.MoleculeToAtomsSpec (moleculeToAtomsSpec)
import CodeWars.Kyu7.RemoveSmallestSpec
import CodeWars.Kyu7.VowelSpec
import CodeWars.Kyu8.AlternatingCaseSpec
import CodeWars.Kyu8.DoubleCharSpec
import CodeWars.Kyu8.GetAverageSpec
import CodeWars.Kyu8.LitresSpec
import CodeWars.Kyu8.MakeLowerSpec
import CodeWars.Kyu8.PowersOfTwoSpec

main :: IO ()
main = do
  fizzBuzzSpec
  sumSpec

  moleculeToAtomsSpec

  removeSmallestSpec
  vowelSpec

  alternatingCaseSpec
  doubleCharSpec
  getAverageSpec
  litresSpec
  makeLowerSpec
  powersOfTwoSpec
