// simple slug generator used by JobController.createJob
// returns null when no text provided
export default function generateSlug(text) {
	if (!text) return null;
	// normalize accents, convert spaces and invalid chars to hyphens
	return String(text)
		.toLowerCase()
		.trim()
		// decompose accented characters, then remove diacritics
		.normalize('NFKD')
		.replace(/[\u0300-\u036f]/g, '')
		// replace non-alphanumeric chars with hyphen
		.replace(/[^a-z0-9]+/g, '-')
		// collapse multiple hyphens
		.replace(/-+/g, '-')
		// remove leading/trailing hyphens
		.replace(/(^-|-$)/g, '');
}
