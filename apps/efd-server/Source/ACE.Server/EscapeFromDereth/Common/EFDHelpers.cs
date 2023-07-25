using ACE.Entity;
using System;

namespace ACE.Server.EscapeFromDereth.Common
{
    public static class EFDHelpers
    {
        // return a new Position from a string location
        public static Position slocToPosition(string location)
        {
            var parameters = location.Split(" ");
            uint cell;

            if (parameters[0].StartsWith("0x"))
            {
                string strippedcell = parameters[0].Substring(2);
                cell = (uint)int.Parse(strippedcell, System.Globalization.NumberStyles.HexNumber);
            }
            else
                cell = (uint)int.Parse(parameters[0], System.Globalization.NumberStyles.HexNumber);

            var positionData = new float[7];
            for (uint i = 0u; i < 7u; i++)
            {
                if (i > 2 && parameters.Length < 8)
                {
                    positionData[3] = 1;
                    positionData[4] = 0;
                    positionData[5] = 0;
                    positionData[6] = 0;
                    break;
                }

                if (!float.TryParse(parameters[i + 1].Trim(new Char[] { ' ', '[', ']' }), out var position))
                    throw new Exception();

                positionData[i] = position;
            }

            uint inst = 0;
            if (parameters.Length >= 9)
                inst = uint.Parse(parameters[8].Trim());

            return new Position(cell, positionData[0], positionData[1], positionData[2], positionData[4], positionData[5], positionData[6], positionData[3], inst);
        }
    }
}
