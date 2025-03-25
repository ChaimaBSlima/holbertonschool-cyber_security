# Holberton School - Shodan Intelligence Report

## Overview
Shodan scan results for `holbertonschool.com` and associated infrastructure, revealing IP ranges, open ports, web technologies, and security configurations.

## Key Findings

### 🖥️ Hosting & Network
- **Organization**: Amazon Data Services France  
- **OS**: Ubuntu  
- **Open Ports**: `80` (HTTP), `440` (Unknown)  
- **Tags**: `closed`, `odd-products`  

### 🔒 SSL/TLS
- **Versions**: TLS 1.2 (`flev3.2`), TLS 1.3 (`flev3.3`)  
- **Fingerprints**:  
  - **JARM**: `27421440429420400043434340000003646928...`  
  - **JASS**: `57488610184002642526239448549`  

### 🌐 Web Technologies
- **Frameworks**: Ruby on Rails, Discourse  
- **Languages**: Ruby  
- **Anomalies**: "Absent" (potential misconfiguration)  
- **Titles**:  
  - `360 Monet Partnership 2`  
  - `Hallachem School Level2 Forum 1` *(Inconsistent branding)*  

## ⚠️ Potential Risks
1. **Odd Ports**: Port `440` purpose unclear.  
2. **Inconsistent Titles**: Possible subdomain hijacking or misconfiguration.  
3. **"Absent" Tech**: May indicate broken components.  

## 🔍 Recommendations
- **Audit AWS resources** for unintended exposure.  
- **Review Ruby on Rails/Discourse** for vulnerabilities.  
- **Investigate port 440** and restrict if unnecessary.  
- **Verify website titles** for unauthorized changes.  

## Limitations
- Passive scan only (internal systems not visible).  
- Truncated data (e.g., JARM fingerprint incomplete).  
