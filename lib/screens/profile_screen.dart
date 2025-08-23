import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                color: Color(0xFF607D8B),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.person, color: Color(0xFF607D8B), size: 30),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Haythem', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                            Text('Diabetes Type 2', style: TextStyle(color: Colors.white, fontSize: 16)),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.edit, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              // Personal Info
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFECEFF1),
                  borderRadius: BorderRadius.circular(16),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Personal Information', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF607D8B))),
                    SizedBox(height: 16),
                    _InfoRow(label: 'Age', value: '28 years'),
                    _InfoRow(label: 'Height', value: '175 cm'),
                    _InfoRow(label: 'Weight', value: '70 kg'),
                    _InfoRow(label: 'Diagnosis Date', value: '2020'),
                  ],
                ),
              ),
              // Health Goals
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Health Goals', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF607D8B))),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFECEFF1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Target Glucose Range', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFF607D8B))),
                    SizedBox(height: 8),
                    Text('• Fasting: 80-130 mg/dL', style: TextStyle(color: Color(0xFF607D8B))),
                    Text('• Post-meal: <180 mg/dL', style: TextStyle(color: Color(0xFF607D8B))),
                    Text('• HbA1c: <7%', style: TextStyle(color: Color(0xFF607D8B))),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF607D8B),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text('Update Goals'),
                    ),
                  ],
                ),
              ),
              // Settings
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Settings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF607D8B))),
              ),
              _SettingItem(
                title: 'Notifications',
                subtitle: 'Manage your notification preferences',
                icon: Icons.notifications,
                onTap: () {},
              ),
              _SettingItem(
                title: 'Privacy',
                subtitle: 'Control your data privacy settings',
                icon: Icons.security,
                onTap: () {},
              ),
              _SettingItem(
                title: 'Help & Support',
                subtitle: 'Get help and contact support',
                icon: Icons.help,
                onTap: () {},
              ),
              _SettingItem(
                title: 'About',
                subtitle: 'App version and information',
                icon: Icons.info,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label, value;
  
  const _InfoRow({
    required this.label,
    required this.value,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(label, style: TextStyle(color: Colors.grey, fontSize: 16)),
          Spacer(),
          Text(value, style: TextStyle(color: Color(0xFF607D8B), fontWeight: FontWeight.bold, fontSize: 16)),
        ],
      ),
    );
  }
}

class _SettingItem extends StatelessWidget {
  final String title, subtitle;
  final IconData icon;
  final VoidCallback onTap;
  
  const _SettingItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        
      ),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF607D8B)),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF607D8B))),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
        onTap: onTap,
      ),
    );
  }
}
