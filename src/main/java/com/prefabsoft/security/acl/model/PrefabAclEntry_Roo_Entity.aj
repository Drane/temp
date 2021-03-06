// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.prefabsoft.security.acl.model;

import com.prefabsoft.security.acl.model.PrefabAclEntry;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PrefabAclEntry_Roo_Entity {
    
    declare @type: PrefabAclEntry: @Entity;
    
    @PersistenceContext
    transient EntityManager PrefabAclEntry.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PrefabAclEntry.id;
    
    public Long PrefabAclEntry.getId() {
        return this.id;
    }
    
    public void PrefabAclEntry.setId(Long id) {
        this.id = id;
    }
    
    @Transactional
    public void PrefabAclEntry.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PrefabAclEntry.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PrefabAclEntry attached = PrefabAclEntry.findPrefabAclEntry(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PrefabAclEntry.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PrefabAclEntry.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PrefabAclEntry PrefabAclEntry.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PrefabAclEntry merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager PrefabAclEntry.entityManager() {
        EntityManager em = new PrefabAclEntry().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PrefabAclEntry.countPrefabAclEntrys() {
        return entityManager().createQuery("select count(o) from PrefabAclEntry o", Long.class).getSingleResult();
    }
    
    public static List<PrefabAclEntry> PrefabAclEntry.findAllPrefabAclEntrys() {
        return entityManager().createQuery("select o from PrefabAclEntry o", PrefabAclEntry.class).getResultList();
    }
    
    public static PrefabAclEntry PrefabAclEntry.findPrefabAclEntry(Long id) {
        if (id == null) return null;
        return entityManager().find(PrefabAclEntry.class, id);
    }
    
    public static List<PrefabAclEntry> PrefabAclEntry.findPrefabAclEntryEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from PrefabAclEntry o", PrefabAclEntry.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
