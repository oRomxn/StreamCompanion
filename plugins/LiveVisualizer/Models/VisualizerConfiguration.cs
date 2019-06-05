﻿using System.Collections.Generic;
using System.ComponentModel;
using System.Windows.Media;

namespace LiveVisualizer
{
    public class VisualizerConfiguration : IVisualizerConfiguration
    {
        public event PropertyChangedEventHandler PropertyChanged;
        public double FontsizeTitle { get; set; } = 15;
        public double FontsizeArtist { get; set; } = 15;
        public Color ChartColor { get; set; } = Color.FromArgb(102, 255, 178, 227);
        public Color ChartProgressColor { get; set; } = Color.FromArgb(178, 255, 178, 227);
        public double MaxYValue { get; set; } = 350;
        public Color FillColor { get; set; } = Color.FromArgb(178, 255, 178, 227);
        public bool Enable { get; set; } = true;
        public bool SimulatePPWhenListening { get; set; } = true;
        public bool EnableRoundedCorners { get; set; } = true;
        public string BottomHeight { get; set; } = "0.65*";
        public string Font { get; set; } = "Arial";
        public string TitleContainerHeight { get; set; } = "30";
        public string ArtistContainerHeight { get; set; } = "20";
        public double FontSizePP { get; set; } = 50;
        public string MarginPP { get; set; } = "0 10 0 0";
        public double FontSizePPText { get; set; } = 30;
        public double FontSizePPHits { get; set; } = 30;

        public bool ShowAxisYSeparator { get; set; } = true;
        public Color AxisYSeparatorColor { get; set; } = Color.FromArgb(102, 255, 178, 227);
        public double AxisYStep { get; set; } = 100;
        public bool AutoSizeAxisY { get; set; } = true;
        public double WindowHeight { get; set; } = 350;
        public double WindowWidth { get; set; } = 700;
        public bool EnableResizing { get; set; } = false;
        public double ChartHeight { get; set; } = 150;
        public Color BackgroundColor { get; set; } = Color.FromArgb(255, 0, 0, 0);
        public Color ImageDimColor { get; set; } = Color.FromArgb(102, 0, 0, 0);
        public Color TitleTextColor { get; set; } = Color.FromArgb(255, 232, 232, 232);
        public Color ArtistTextColor { get; set; } = Color.FromArgb(255, 203, 203, 203);
        public SortedSet<int> ChartCutoffsSet { get; set; } = new SortedSet<int>();
    }
}