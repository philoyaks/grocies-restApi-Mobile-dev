﻿using System;
using System.Collections.Generic;

namespace project.Models;
    public partial class ShopAccount
    {
        public ShopAccount()
        {
            Ordering = new HashSet<Ordering>();
        }

        public string Username { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string PhoneNumber { get; set; }
        public string Image { get; set; }
        public string? Latitude { get; set; }
        public string Longitude { get; set; }
        public string CoverImage { get; set; }

        public virtual ICollection<Ordering> Ordering { get; set; }
    }

