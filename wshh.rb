require 'net/http'  
require 'json'

paths = ["wshhoSb5GFVXx5fPFgh0",
"wshhd2G3Ct50Uh63Avpx",
"wshh1wfwvHaq2wbM13EF",
"wshhz2iRxV0F3ymi8SKa",
"wshh3q4qY7Mfnn601wvM",
"wshh02NdgJlT3T6AA1f0",
"wshhG483pR443aF9e1f7",
"wshhvJ752ugY1u0iM0x1",
"wshhCo3Z8K1BoFDuov06",
"wshhpr7C64b8TjvyXF7j",
"wshh2i4Ul08w3OS4tz4O",
"wshh15QLwRc2JWqXcf9P",
"wshhOS5y02z5ITd2r0nE",
"wshh0BOjRyT1QSky72K4",
"wshhPap3cPjMrg9jJLKJ",
"wshhA4fFlPMF8x0kk97p",
"wshhSI5kn4x6Mpuvf81k",
"wshh71rjEZd82zD1F9Qr",
"wshh01H89fa7ltlz026d",
"wshhZ9qBY70CRe58Yd34",
"wshhNAb7MmR01e7f0tCt",
"wshhdaiZvdb51EA33F4c",
"wshhbwERe3l3VUMiDhq3",
"wshh1PCa939b2FOAJ41J",
"wshh1F2a2bjEnCgUotJs",
"wshhC33JdB0EZEc3P0D0",
"wshhyL9teAww16K3rKI2",
"wshhsU91tIETmG09eh79",
"wshh2UNS1Fj6D47V7iAs",
"wshhs2epgEyhWxyCP7J3",
"wshh1G9Cr7rzVtb9FXuL",
"wshh1G9Cr7rzVtb9FXuL",
"wshhS0N8A009X5f30nDI",
"wshhS0N8A009X5f30nDI",
"wshh5Z4dV3N9y1Hb1ZcV",
"wshh5Z4dV3N9y1Hb1ZcV",
"wshh5Z4dV3N9y1Hb1ZcV",
"wshh5Z4dV3N9y1Hb1ZcV",
"wshhnuG5kZpOHk6j8N2I",
"wshhnuG5kZpOHk6j8N2I",
"wshh2veYTm8Nm5OledyU",
"wshha6A4655dst97022q",
"wshh93KAyk000Z13392R",
"wshhUp2BJ545fhr3dbm2",
"wshhSXV5OkXvuM2R6xvI",
"wshhl4PxLu1AW31375HX",
"wshhMluVI72q9mkIsbV4",
"wshhMluVI72q9mkIsbV4",
"wshh9WdxmHCPHr6585SU",
"wshh0Ak5OSJL6U47TYrR",
"wshh0Ak5OSJL6U47TYrR",
"wshh0Ak5OSJL6U47TYrR",
"wshh0Ak5OSJL6U47TYrR",
"wshhwAs15r541V6rhLKl",
"wshh6TRwUe2VIfkpUY1V",
"wshh6TRwUe2VIfkpUY1V",
"wshhN1o6748sT28nxo4Y",
"wshhb42W2SAvzlLdtXlb",
"wshhb42W2SAvzlLdtXlb",
"wshh5doVhXE0CL1HcD2f",
"wshhvYk9CFj6vEyY9vRS",
"wshhCFtL58byfiVE4pI0",
"wshh8UTEtmD3iQ4Spr8X",
"wshh8UTEtmD3iQ4Spr8X",
"wshhA8SuwSYJw07O7TBk",
"wshh2KoazvvLA3SwD3U9",
"wshh6WH90tMB14A7J0Rx",
"wshhM1dsMuhBT9gidF36",
"wshhcFIZxW4VS25Gc71S",
"wshhfZLvZKQxzo54IvVK",
"wshh8oulrc65s7uxmR3q",
"wshh8oulrc65s7uxmR3q",
"wshh8oulrc65s7uxmR3q",
"wshh1ibJoiT50d8FWCtz",
"wshhHO1bw3edn653FC4V",
"wshhHO1bw3edn653FC4V",
"wshhNpRTH3QdF2SRz8W6",
"wshhftKc6yWns3Dcwn5N",
"wshh6yO5X57ADXBo5IGA",
"wshh6yO5X57ADXBo5IGA",
"wshh6yO5X57ADXBo5IGA",
"wshhTf7AOF0671wj2Kw2",
"wshhgrdoN78K65FT4wVI",
"wshhay3DWBLinZ7Q0pv9",
"wshhay3DWBLinZ7Q0pv9",
"wshhay3DWBLinZ7Q0pv9",
"wshh58a8eJ6gCrU95I12",
"wshhX63TvSF4y8f5PwFS",
"wshhX63TvSF4y8f5PwFS",
"wshhj0aaiPDUjUw9Lc5I",
"wshhj0aaiPDUjUw9Lc5I",
"wshh0Th0Aj4T35QCO0Gc",
"wshhWSXuqq79p6jk97MK",
"wshhqs2gIyOB7S01z4Sc",
"wshhY2Mhf3s54JaqoV32",
"wshh1k1H866Z2q6WF8DX",
"wshhgG3BhyELJzt1Pi64",
"wshhSAtC26OE4aS0pgV7",
"wshh570gLSPpi5MVttod",
"wshhOnJl66eLh0I25l4z",
"wshhlNr4bcFlnkurVt8Y",
"wshhuq2J3YwUuS7XyQPT",
"wshh97dS71DR0JcZ4ML2",
"wshh97dS71DR0JcZ4ML2",
"wshh97dS71DR0JcZ4ML2",
"wshh5zsYVk9c6ElSE5pe",
"wshhl3p6Lw9UU74KC5aH",
"wshh1OXeP2Yg15W9mpGv",
"wshh1OXeP2Yg15W9mpGv",
"wshhuCXXU7ANQ15m4sYc",
"wshhy2mfc8fo6r47n1lk",
"wshhSO54GXAdr4543sgP",
"wshh0ZKkLbM6m3xIMpTQ",
"wshh0U0sSdk82GPqH8TL",
"wshhL6o36bW7z83f14kY",
"wshh1xn2gw1WyX5904C4",
"wshh1xn2gw1WyX5904C4",
"wshh1xn2gw1WyX5904C4",
"wshh1xn2gw1WyX5904C4",
"wshh5Jb04yk924kMJadS",
"wshh7TP5UQ1FxGHay3YW",
"wshhgYyGiky15VDy2067",
"wshhAs4t8K4rcToi8NHt",
"wshh78868BJ94Igz6Dm8",
"wshhMsNO0L0QpbGNo9ko",
"wshhZ1rxgWqN1065Eyuv",
"wshhlJ4z0Dk202uSTt7W",
"wshhodXful8cYbH3nxaG",
"wshhodXful8cYbH3nxaG",
"wshh3TNVw6Zp7PIqbMMf",
"wshhM45qzuH6m8V25LIC",
"wshhJK0yUO51fl6ka72g",
"wshhuF519D4FJ6704f0I",
"wshhu0JqP23I5WK35pSV",
"wshhVF0RAJJ93sLS1EzZ",
"wshhv223rd69sIC8HW8R",
"wshhtfi7TZE2oe8dvLd8",
"wshh94YLdoA3LNw5YKJI",
"wshhB7UnpqX4l9xE6255",
"wshhB7UnpqX4l9xE6255",
"wshhB7UnpqX4l9xE6255",
"wshhB7UnpqX4l9xE6255",
"wshhB7UnpqX4l9xE6255",
"wshh5V35I9KrSeMPm1Ge",
"wshh8mMZzpjYkaoVh96S",
"wshh1q6ba99d48Fq20Im",
"wshh6K1ixfRfXHn52d5k",
"wshh49fs84M0o0L7scw9",
"wshh3em459G5XIj2d8GO",
"wshh3em459G5XIj2d8GO",
"wshh3em459G5XIj2d8GO",
"wshh9gl0AHLBv8Qwsvwf",
"wshh9gl0AHLBv8Qwsvwf",
"wshhR73upg9oEmu5R2l9",
"wshhh49s99g5w0TbfivS",
"wshhaX1RtNtBsBheQcqT",
"wshhzLl73cSUrNBEjCRS",
"wshhzLl73cSUrNBEjCRS",
"wshhzLl73cSUrNBEjCRS",
"wshhAn0JMXRiK7QqTtxj",
"wshhGCztGZ0uyX3fJ0Gy",
"wshh2EpD3kih95c2y0NP",
"wshh9K0ZCEhM56M78MwH",
"wshhw42vY65H69PXr419",
"wshhk0Gm52617peH0820",
"wshhr8516pjWcXO291b5",
"wshho9qs8p12pY729vQT",
"wshhx84Kxo1hx2cvFunT",
"wshhbqenYn55XT4A11cs",
"wshh3IO2cr412h5ptIT6",
"wshhW5jJ86M7pkApRl1q",
"wshh5BR7d6k2lH58vhgV",
"wshh5BR7d6k2lH58vhgV",
"wshh5BR7d6k2lH58vhgV",
"wshhVIRIZHw2XpQJzs77",
"wshhVIRIZHw2XpQJzs77",
"wshhVIRIZHw2XpQJzs77",
"wshhik6X2e9j98Rugc63",
"wshhN4h3QZ3szz9882Sg",
"wshh0Mo0k7s9gK7p9J8d",
"wshhfQ9gWHVBt27h5RsW",
"wshhfQ9gWHVBt27h5RsW",
"wshhfQ9gWHVBt27h5RsW",
"wshhNr5J5pBUH4Q4zJWF",
"wshhNr5J5pBUH4Q4zJWF",
"wshhsh6yF1e97f67gf46",
"wshhdvt70B2W61cw3hwj",
"wshhVOvai6B1Ikjer6mp",
"wshhVOvai6B1Ikjer6mp",
"wshhVOvai6B1Ikjer6mp",
"wshhFIuwwwC5DvM7l2OI",
"wshhPBk89aRzS6H2GhrP",
"wshhPBk89aRzS6H2GhrP",
"wshhQ7CjaTg197AEYK3V",
"wshhJN326MX08rpgVgKh",
"wshh2p54y9RoBQ1ac4CF",
"wshhD39QYLx515M640J6",
"wshhM4mK9US8e01VIqnv",
"wshhTEvIO04FIl0lBwNZ",
"wshh3TrDDDJaEVrHzJrp",
"wshh0AW5WLxl9I8g9tI7",
"wshh0AW5WLxl9I8g9tI7",
"wshh0AW5WLxl9I8g9tI7",
"wshh0AW5WLxl9I8g9tI7",
"wshhuozyjgP4IL4qqvGd",
"wshhCfV4dAiMbo8eRU40",
"wshhCfV4dAiMbo8eRU40",
"wshh9m72mgCy728Amc54",
"wshhH545B2C2e6UOZD1c",
"wshh7BrBEFY0yH5a2WG7",
"wshhyBKZ789440qUQmXD",
"wshhyBKZ789440qUQmXD",
"wshhcLXtWR5TyVsZfBaN",
"wshhN6Dx6ZnKMjTlxb8w",
"wshhPf2tJYurB5wL91ZK",
"wshhH545B2C2e6UOZD1c",
"wshh9fli6s16uDs2fTv3",
"wshhSR9UP875246uNuPA",
"wshh7q9keFkiuu7XedSg",
"wshhsNyYf714Y5EAzbSR",
"wshhSfn3r4x4Ojy1ZeV7",
"wshh3723DhdYNIdf0x8N",
"wshh3723DhdYNIdf0x8N",
"wshh8Y71z3UcUJ1BcWG1",
"wshhh09rs1jCoRL8bjEN",
"wshhtD5v7LV2f6Nbbdei",
"wshhno9A7C5aPfd6pr66",
"wshh02sz8Gs5cEVI6a0x",
"wshhaw8XS8ZJuKleo90r",
"wshhr575RzX49S9nLR8t",
"wshhVQ9qrv57mYr8fFwr",
"wshh8vACgQnS95YxWa5y",
"wshh8vACgQnS95YxWa5y",
"wshhGE4zp5RDXE0lfyP5",
"wshh6BgM934QNXPoC6Z0",
"wshh7Vsv5V1nkETAR37v",
"wshh7Vsv5V1nkETAR37v",
"wshh7Vsv5V1nkETAR37v",
"wshh7Vsv5V1nkETAR37v",
"wshh7Vsv5V1nkETAR37v",
"wshh5oJ1K8T4L8ZWfAqO",
"wshh2Ef05L2O5h6yPEY0",
"wshh2rxk9Z6Qa34ja46k",
"wshhKp6n4JFJrFx5G2Dy",
"wshhrYcD83QWN1n0665g",
"wshh6jT0kXWVsR1KSptM",
"wshhb6i5Vl4n4vn2qCdW",
"wshhY657n0YaNnH6A1zT",
"wshhs512VJ3HuJx7G5Ck",
"wshh1E52i9uQ36WI2qu6",
"wshho1oEeW6r116C28X1",
"wshh0JQYfRtJ3n4b3dXv",
"wshhT8eP1kawTy00lsn1",
"wshhoPuk78N8T591sBta",
"wshhrXulwBJeN80OtGxd",
"wshhrXulwBJeN80OtGxd",
"wshhFG4eCHG4U4g7PP56",
"wshhdH2xvTKT1H3BRDJ1"]

dates = []
paths.each {|x|
	uri = URI.parse("http://wshh-api.herokuapp.com/video/#{x}")
	#response = Net::HTTP.get_response(uri)
	value = Net::HTTP.get(uri)
	parse = JSON.parse(value)
	date = parse["date"]
		if date == nil
			date = x
			puts date
		end
	date.slice! "Uploaded "
	puts date
}

puts dates