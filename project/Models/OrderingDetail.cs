﻿using System;
using System.Collections.Generic;

namespace project.Models;
    public partial class OrderingDetail
    {
        public long Id { get; set; }
        public int? OrderingId { get; set; }
        public int? ProductId { get; set; }
        public int Count { get; set; }

        public virtual Ordering Ordering { get; set; }
        public virtual Product Product { get; set; }
    }

