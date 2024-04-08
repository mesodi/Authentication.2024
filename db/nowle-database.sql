CREATE TABLE user (
    user_id VARCHAR(255) PRIMARY KEY,
    username VARCHAR(255) NOT NULL
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    industry VARCHAR(255)
);

CREATE TABLE job (
    job_id VARCHAR(255) PRIMARY KEY,
    job_user_id VARCHAR(255) NOT NULL,
    job_date_created DATE NOT NULL,
    job_status VARCHAR(50) NOT NULL,
    FOREIGN KEY (job_user_id) REFERENCES User(user_id)
);

CREATE TABLE company (
    company_id VARCHAR(255) PRIMARY KEY,
    company_job_id VARCHAR(255) NOT NULL,
    company_applicant VARCHAR(255) NOT NULL,
    company_appearances INT NOT NULL,
    FOREIGN KEY (company_job_id) REFERENCES Job(job_id)
);

CREATE TABLE patent (
    patent_id VARCHAR(255) PRIMARY KEY,
    patent_company_id VARCHAR(255) NOT NULL,
    patent_inventors VARCHAR(255),
    patent_app_date DATE NOT NULL,
    patent_app_number VARCHAR(100),
    patent_title VARCHAR(255),
    patent_abstract TEXT,
    FOREIGN KEY (patent_company_id) REFERENCES Company(company_id)
);
CREATE TABLE linkedinUrl (
    linkedin_id VARCHAR(255) PRIMARY KEY,
    linkedin_company_id VARCHAR(255) NOT NULL,
    linkedin_patent_id VARCHAR(255) NOT NULL,
    linkedin_inventor VARCHAR(255) NOT NULL,
    linkedin_url VARCHAR(255) NOT NULL,
    FOREIGN KEY (linkedin_company_id) REFERENCES Company(company_id),
    FOREIGN KEY (linkedin_patent_id) REFERENCES Patent(patent_id)
);
CREATE TABLE ampleData (
    ample_id VARCHAR(255) NOT NULL PRIMARY KEY,
    ample_job_id VARCHAR(255) NOT NULL,
    ample_email_status VARCHAR(255) NOT NULL,
    ample_email VARCHAR(255) NOT NULL,
    ample_first_name VARCHAR(255) NOT NULL,
    ample_last_name VARCHAR(255) NOT NULL,
    ample_linkedin VARCHAR(255) NOT NULL,
    ample_company_name VARCHAR(255) NOT NULL,
    ample_company_domain VARCHAR(255) NOT NULL,
    ample_Company_email_domain VARCHAR(255) NOT NULL,
    ample_Company_size VARCHAR(255) NOT NULL,
    ample_industry VARCHAR(255) NOT NULL,
    ample_location VARCHAR(255) NOT NULL,
    ample_city VARCHAR(255) NOT NULL,
    ample_state VARCHAR(255) NOT NULL,
    ample_country VARCHAR(255) NOT NULL,
    ample_company_linkedin VARCHAR(255) NOT NULL
);
INSERT INTO User (user_id, username, password, email, industry) VALUES
    ('USR-47987', 'deanna39@carpenter.com', 'password1', 'deanna39@carpenter.com', 'facilitate back-end deliverables'),
    ('USR-25058', 'howellmary@williams-delacruz.info', 'password2', 'howellmary@williams-delacruz.info', 'facilitate world-class web-readiness'),
    ('USR-67541', 'wheelergwendolyn@torres.com', 'password3', 'wheelergwendolyn@torres.com', 'repurpose interactive bandwidth'),
    ('USR-22513', 'mjones@nelson-nolan.com', 'password4', 'mjones@nelson-nolan.com', 'incubate compelling e-tailers'),
    ('USR-57755', 'emartinez@leon.com', 'password5', 'emartinez@leon.com', 'seize virtual solutions'),
    ('USR-38765', 'garcia@example.com', 'password6', 'garcia@example.com', 'optimize dynamic platforms'),
    ('USR-98476', 'hernandez@example.com', 'password7', 'hernandez@example.com', 'streamline global infrastructures'),
    ('USR-65432', 'martinez@example.com', 'password8', 'martinez@example.com', 'enhance scalable web services'),
    ('USR-83219', 'perez@example.com', 'password9', 'perez@example.com', 'synergize efficient paradigms'),
    ('USR-90871', 'johnson@example.com', 'password10', 'johnson@example.com', 'leverage robust metrics');

INSERT INTO Job (job_id, job_user_id, job_date_created, job_status) VALUES
    ('QRY-20240309-273898', 'USR-47987', '2023-03-09', 'COMPLETE'),
    ('QRY-20240309-905777', 'USR-25058', '2023-03-08', 'Processing..'),
    ('QRY-20240309-438943', 'USR-67541', '2023-03-07', 'COMPLETE'),
    ('QRY-20240309-204127', 'USR-22513', '2023-03-06', 'COMPLETE'),
    ('QRY-20240309-331501', 'USR-57755', '2023-03-05', 'COMPLETE'),
    ('QRY-20240310-987654', 'USR-38765', '2023-03-10', 'Processing..'),
    ('QRY-20240311-123456', 'USR-98476', '2023-03-11', 'COMPLETE'),
    ('QRY-20240312-654321', 'USR-65432', '2023-03-12', 'Processing..'),
    ('QRY-20240313-456789', 'USR-83219', '2023-03-13', 'COMPLETE'),
    ('QRY-20240314-987123', 'USR-90871', '2023-03-14', 'COMPLETE');
INSERT INTO Company (company_id, company_job_id, company_applicant, company_appearances) VALUES
        ('CO-95071', 'QRY-20240309-273898', 'Ruiz-May', 20),
        ('CO-26520', 'QRY-20240309-905777', 'Munoz, Gates and Smith', 26),
        ('CO-90461', 'QRY-20240309-438943', 'Schroeder and Sons', 92),
        ('CO-56614', 'QRY-20240309-204127', 'Collins-Floyd', 2),
        ('CO-96768', 'QRY-20240309-331501', 'Sanders LLC', 69),
        ('CO-34892', 'QRY-20240310-987654', 'Baker Group', 15),
        ('CO-75849', 'QRY-20240311-123456', 'Wilson Enterprises', 33),
        ('CO-12458', 'QRY-20240312-654321', 'Young LLC', 48),
        ('CO-48957', 'QRY-20240313-456789', 'King Corp', 27),
        ('CO-65892', 'QRY-20240314-987123', 'Wright and Sons', 35);

INSERT INTO Patent (patent_id, patent_company_id, patent_inventors, patent_app_date, patent_app_number, patent_title, patent_abstract) VALUES
        ('PTN-16139925493', 'CO-95071', 'Bradley Dawson', '2022-01-14', '618346D', 'Innovative Solar Panel Designs', 'A novel approach to solar panel efficiency, incorporating flexible materials and advanced photovoltaic cells.'),
        ('PTN-97949302726', 'CO-26520', 'Robert Stevenson', '2021-04-04', '161237D', 'Advanced AI Algorithms for Data Analysis', 'Developing cutting-edge AI algorithms to enhance data analysis techniques, focusing on speed and accuracy.'),
        ('PTN-32656225549', 'CO-90461', 'Christine Riggs, David Moore', '2019-10-11', '130224D', 'Eco-Friendly Packaging Solutions', 'Introducing biodegradable materials into packaging, reducing environmental impact and promoting sustainability.'),
        ('PTN-64487509355', 'CO-56614', 'Cody Rich', '2020-04-23', '230360D', 'Smart Wearable Technology', 'Integrating health monitoring functions into wearable technology, aiming for user-friendly and discreet devices.'),
        ('PTN-84201296499', 'CO-56614', 'Charlotte Pham', '2021-12-22', '282709D', 'Blockchain-based Secure Transactions', 'Enhancing online transaction security using blockchain technology, ensuring data integrity and user privacy.'),
        ('PTN-21436587092', 'CO-34892', 'Alex Johnson', '2022-02-28', '742158D', 'Water Purification Techniques', 'Revolutionizing water purification methods to provide clean and safe drinking water with minimal energy consumption.'),
        ('PTN-98765432109', 'CO-75849', 'Emily Harris', '2020-07-15', '963852D', 'Robotic Automation in Manufacturing', 'Implementing robotic systems to automate repetitive tasks in manufacturing, increasing efficiency and reducing human error.'),
        ('PTN-12345678901', 'CO-12458', 'Michael Brown, Sarah Miller', '2019-11-30', '147258D', 'Augmented Reality in Education', 'Utilizing AR technology to create immersive and interactive learning experiences for students of all ages.'),
        ('PTN-09876543210', 'CO-48957', 'Daniel Davis', '2021-05-20', '369258D', 'Electric Vehicle Charging Stations', 'Developing a network of fast-charging stations for electric vehicles, focusing on accessibility and convenience.'),
        ('PTN-56789012345', 'CO-65892', 'Lisa Wilson', '2022-03-12', '753159D', 'Renewable Energy Storage Systems', 'Creating efficient energy storage solutions to complement renewable energy sources, addressing the challenge of energy intermittency.');

INSERT INTO LinkedinUrl (linkedin_id, linkedin_company_id, linkedin_patent_id, linkedin_inventor, linkedin_url) VALUES
        ('LKD-653171', 'CO-95071', 'PTN-16139925493', 'Bradley Dawson', 'https://www.linkedin.com/in/bradley-dawson'),
        ('LKD-991616', 'CO-26520', 'PTN-97949302726', 'Robert Stevenson', 'https://www.linkedin.com/in/robert-stevenson'),
        ('LKD-147782', 'CO-90461', 'PTN-32656225549', 'Christine Riggs', 'https://www.linkedin.com/in/christine-riggs'),
        ('LKD-959580', 'CO-90461', 'PTN-32656225549', 'David Moore', 'https://www.linkedin.com/in/david-moore'),
        ('LKD-663522', 'CO-56614', 'PTN-64487509355', 'Cody Rich', 'https://www.linkedin.com/in/cody-rich'),
        ('LKD-214365', 'CO-34892', 'PTN-21436587092', 'Alex Johnson', 'https://www.linkedin.com/in/alex-johnson'),
        ('LKD-987654', 'CO-75849', 'PTN-98765432109', 'Emily Harris', 'https://www.linkedin.com/in/emily-harris'),
        ('LKD-123456', 'CO-12458', 'PTN-12345678901', 'Michael Brown', 'https://www.linkedin.com/in/michael-brown'),
        ('LKD-123457', 'CO-12458', 'PTN-12345678901', 'Sarah Miller', 'https://www.linkedin.com/in/sarah-miller'),
        ('LKD-098765', 'CO-48957', 'PTN-09876543210', 'Daniel Davis', 'https://www.linkedin.com/in/daniel-davis'),
        ('LKD-567890', 'CO-65892', 'PTN-56789012345', 'Lisa Wilson', 'https://www.linkedin.com/in/lisa-wilson');
