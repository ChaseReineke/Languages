package com.chase.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chase.languages.model.Language;
import com.chase.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	
	@Autowired
	private LanguageRepository languageRepository;
	
	
	public List<Language> allLanguages() {
        return languageRepository.findAll();
    }
	
	public Language findLanguage(Long id) {
		Optional<Language> optionalLang = languageRepository.findById(id);
		if (optionalLang.isPresent()) {
			return optionalLang.get();
		}
		else {
			return null;
		}

	}
	
	public Language createLanguage(Language lang) {
		return languageRepository.save(lang);
		
	}
	
	public Language updateLanguage(Language lang, Long id) {
		Language langOg = this.findLanguage(id);
		langOg.setName(lang.getName());
		langOg.setCreator(lang.getCreator());
		langOg.setVersion(lang.getVersion());
		languageRepository.save(this.findLanguage(id));
		return this.findLanguage(id);
	}
	
	public void deleteLanguage(Long id) {
		languageRepository.deleteById(id);
	}
}