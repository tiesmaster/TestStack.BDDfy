﻿// This class serves as a scenario for ScoreCalculationAlternativeForms story.

using Bddify.Core;
using NUnit.Framework;

namespace $rootnamespace$.Bddify.Samples.Bowling
{
    public class AllSpares
    {
        private Game _game;

        void GivenANewBowlingGame()
        {
            _game = new Game();
        }

        void WhenIRoll10Times1And9()
        {
            for (int i = 0; i < 10; i++)
            {
                _game.Roll(1);
                _game.Roll(9);
            }
        }

        void AndWhenIRoll1()
        {
            _game.Roll(1);
        }

        void ThenMyTotalScoreShouldBe110()
        {
            Assert.That(_game.Score, Is.EqualTo(110));
        }
    }
}