import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        headerSection(),
        jobSection('CFO','ABC Co.', 'January 2020 - Present', 'San Diego, California', 
        'Run the company financials on a day to day basis.  Keep things moving and moving until things work.'),
        jobSection('Software Engineer','Facebook', 'February 2018 - January 2020', 'San Diego, California', 
        'Work with companies on importing their framework and building out modules. \n'
        'Assess large data sets and make sure things are working to standard or industry best practice.'),
        jobSection('Auditor','Ernst & Young', 'May 2016 - February 2018', 'San Antonio, Texas', 
        'Ensuring public companies file under the requirements of SEC and GAAP guidance. \n'
        'Assess large data sets and make sure things are working to standard or industry best practice.\n'
        'Building a better working world and delivering more transparent data to investors'),
        jobSection('Financial Consultant','Schwab Financial', 'December 2012 - May 2016', 'Buffalo, New York', 
        'Analyzing financial data and providing return on investment for individuals according to their risk tolerance \n'
        'Making best practice calls and financial advise to people trying to make money on their money\n'
        'Works with technology that helps financial decisions'),
        jobSection('Intern','Doordash', 'March 2011 - December 2012', 'Phoenix, Arizona', 
        'Deliver food and make people happy! \n'
        'Bring smiles to people while they relax at home!'),
        jobSection('First job!','Chipotle', 'February 2010 - March 2011', 'Phoenix, Arizona', 
        'Deliver food and make people happy! \n'
        'Bring smiles to people while they relax at home!')
      ],
    ));
  }
}

Widget headerSection() {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0, left: 20.0),
    child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 100),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Matt McKelvey',
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
              Text('mmckelve45@gmail.com\n'
                    'https://github.com',
                  style: TextStyle(fontFamily: 'Rubik', height: 1.5))
            ],
          ),
        )),
  );
}


Widget jobSection(title, company, period, location, description) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
    child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 100),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$title',
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 20,
                      fontWeight: FontWeight.w300)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  Text('$company \n'
                       '$period \n'
                       '$location',
                       style: TextStyle(fontFamily: 'Rubik', fontSize: 14)
                       )
                ],
              ),
              Text('$description',
                  style: TextStyle(fontFamily: 'Raleway',fontSize: 12))
            ],
          ),
        )),
  );
}