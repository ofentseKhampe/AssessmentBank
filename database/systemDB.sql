SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
------------------------------------------
create database systemDB;
use systemdb;

-----------------------------------------
--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `acc_type` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- inserting data for table `account`
--

INSERT INTO `account` (`id`, `acc_id`, `cust_id`, `acc_type`, `balance`) VALUES
(101, 'A0001', 'CS001', 'Saving', 4077),
(102, 'A0002', 'CS002', 'Current', 13900),
(103, 'A0003', 'CS004', 'Saving', 4400),
(104, 'A0004', 'CS005', 'Saving', 5600),
(105, 'A0005', 'CS006', 'Saving', 4000),
(106, 'A0006', 'CS001', 'Saving', 3000),
(107, 'A0007', 'CS007', 'Saving', 10000);


-------------------------------------
--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branch` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch`) VALUES
(1, 'Soweto'),
(2, 'Joburg'),
(3, 'Pretoria');

---------------------------------------
--
-- Table structure for table `customer`


CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `branch` int(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`


INSERT INTO `customer` (`id`, `cust_id`, `firstname`, `lastname`, `street`, `city`, `branch`, `phone`) VALUES
(1,'CS001','ofentse','khampe','masemola','soweto',2,1234567,
(2, 'CS002', 'neo', 'khambule', 'thornton road', 'Vaal', 2, 24234234),
(3, 'CS003', 'vuyane', 'cisane', 'meyerton', 'joburg', 1, 344234),
(4, 'CS004', 'bongane', 'gasa', 'main road', 'braam', 2, 775487240),
(5, 'CS005', 'penrose', 'mlotshwa', 'talmage', 'sasol, 2, 2334234),
(6, 'CS006', 'john', 'jk', 'main street', 'qwa qwa', 3, 9884433),
(11, 'CS007', 'John', 'Peter', '70b main street', 'Chennai', 3, 9421112);

-- --------------------------------------------------------


--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `acc_id`, `cust_id`, `date`, `balance`, `deposit`) VALUES
(1, 'A0001', 'CS001', '2021/02/05', 2977, 1000),
(2, 'A0001', 'CS001', '2021/02/05', -923, 1000),
(3, 'A0001', 'CS001', '2021/02/05', 77, 1000),
(4, 'A0001', 'CS001', '2021/02/05', 577, 1000),
(5, 'A0003', 'CS004', '2021/02/05', 2000, 4000),
(6, 'A0004', 'CS005', '2021/02/06', 3000, 2000),
(7, 'A0005', 'CS006', '2021/02/06', 5000, 3000),
(8, 'A0005', 'CS006', '2021/07/02', 3000, 1000),
(9, 'A0001', 'CS001', '2021/07/30', 2077, 1000),
(10, 'A0002', 'CS002', '2020/06/17', -12900, 1000),
(11, 'A0007', 'CS007', '2020/06/17', 8000, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `f_account` varchar(255) NOT NULL,
  `to_account` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `f_account`, `to_account`, `amount`) VALUES
(2, 'A0001', 'A0002', 500),
(5, 'A0001', 'A0002', 500),
(6, 'A0001', 'A0002', 400),
(7, 'A0001', 'A0002', 1000),
(8, 'A0003', 'A0002', 2000),
(9, 'A0004', 'A0003', 400),
(10, 'A0005', 'A0004', 1000),
(11, 'A0002', 'A0001', 1000),
(12, 'A0002', 'A0001', 1000),
(13, 'A0007', 'A0006', 1000);


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'fentse', '123'),
(2, 'neo', '321'),
(3, 'Thapelo', 'John');

-- --------------------------------------------------------
-
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `withdraw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `acc_id`, `cust_id`, `date`, `balance`, `withdraw`) VALUES
(1, 'A0001', 'CS001', '2021/02/04', 5000, 4000),
(2, 'A0001', 'CS001', '2021/02/04', 5000, 4000),
(3, 'A0001', 'CS001', '2021/02/04', 5000, 4000),
(4, 'A0001', 'CS001', '2021/02/04', 5000, 4000),
(5, 'A0001', 'CS001', '2021/02/04', 5000, 233),
(6, 'A0001', 'CS001', '2021/02/04', 5000, 4000),
(7, 'A0001', 'CS001', '2021/02/04', 1000, 100),
(8, 'A0001', 'CS001', '2021/02/04', 1000, 400),
(9, 'A0001', 'CS001', '2021/02/04', 1000, 200),
(10, 'A0001', 'CS001', '2021/02/04', 1000, 200),
(11, 'A0001', 'CS001', '2021/02/04', 1000, 233),
(12, 'A0001', 'CS001', '2021/02/04', 1000, 233),
(13, 'A0001', 'CS001', '2021/02/04', 1000, 2),
(14, 'A0001', 'CS001', '2021/02/04', 1000, 223),
(15, 'A0001', 'CS001', '2021/02/04', 977, 233),
(16, 'A0001', 'CS001', '2021/02/04', 977, 233),
(17, 'A0001', 'CS001', '2021/02/04', 977, 1000),
(18, 'A0001', 'CS001', '2021/02/04', 1977, 1000),
(19, 'A0002', 'CS002', '2021/02/05', 13900, 1000),
(20, 'A0001', 'CS001', '2021/02/05', 1077, 500),
(21, 'A0003', 'CS004', '2021/02/05', 5000, 3000),
(22, 'A0004', 'CS005', '2021/02/06', 4000, 1000),
(23, 'A0005', 'CS006', '2021/02/06', 8000, 2000),
(24, 'A0001', 'CS001', '2021/02/10', 1577, 500),
(25, 'A0005', 'CS006', '2021/07/02', 5000, 2000),
(26, 'A0007', 'CS007', '2020/06/17', 10000, 2000);

---------------------------------------
--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;