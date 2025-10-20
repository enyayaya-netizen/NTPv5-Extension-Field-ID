# IETF Internet-Draft Template

This directory contains an IETF Internet-Draft template for the NTPv5 Extension Field ID specification.

## Files

- `draft-ntpv5-extension-field-id.xml` - The main draft source file in XML format (RFC 7991 v3)
- `Makefile` - Build automation for generating text and HTML versions
- `DRAFT-README.md` - This file

## Prerequisites

To build the draft, you need to install `xml2rfc`:

```bash
pip install xml2rfc
```

Or use the Makefile target:

```bash
make install-deps
```

## Building the Draft

### Generate both text and HTML versions:
```bash
make all
```

### Generate text version only:
```bash
make txt
```

### Generate HTML version only:
```bash
make html
```

### Check XML syntax:
```bash
make check
```

### Clean generated files:
```bash
make clean
```

## Editing the Draft

The main source file is `draft-ntpv5-extension-field-id.xml`. This file uses the RFC 7991 v3 XML format.

### Key sections to customize:

1. **Author information** (lines 24-36):
   - Update `fullname`, `initials`, and `surname`
   - Update organization name
   - Update contact information (postal address, email)

2. **Date** (line 38):
   - Update the year as needed

3. **Abstract** (lines 45-53):
   - Modify to reflect the actual content of your draft

4. **Content sections** (middle section):
   - Introduction
   - Extension Field specification
   - Usage and Processing
   - Security Considerations
   - IANA Considerations

5. **References**:
   - Add normative and informative references as needed

## Draft Naming Convention

IETF Internet-Drafts follow the naming convention:
```
draft-<source>-<wg>-<topic>-<version>.txt
```

The current draft uses:
- Source: (to be determined)
- Working Group: ntpv5 (or appropriate WG)
- Topic: extension-field-id
- Version: latest (update to 00, 01, 02, etc. for submissions)

## Submitting the Draft

Before submitting to the IETF:

1. Update the version number in the filename and docName attribute
2. Ensure all author information is complete and accurate
3. Run `make check` to validate the XML
4. Generate and review the text version with `make txt`
5. Follow IETF submission guidelines at https://www.ietf.org/id-info/

## Resources

- [RFC 7991](https://www.rfc-editor.org/rfc/rfc7991.html) - XML format specification
- [xml2rfc documentation](https://xml2rfc.tools.ietf.org/)
- [IETF Internet-Draft Guidelines](https://www.ietf.org/standards/ids/)
- [I-D Template](https://www.ietf.org/id-info/guidelines.html)

## License

This template follows IETF Trust Legal Provisions as specified in the draft header (ipr="trust200902").
