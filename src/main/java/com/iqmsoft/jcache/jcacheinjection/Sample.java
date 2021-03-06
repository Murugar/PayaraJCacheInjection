
package com.iqmsoft.jcache.jcacheinjection;

import java.io.Serializable;
import javax.cache.Cache;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;


@RequestScoped
public class Sample implements Serializable {
    
    //@NamedCache(cacheName = "cache", managementEnabled = true)
    @Inject
    Cache cache;
    
    public Sample(){
        
    }
    /**
     * 
     * @param id cache key
     * @param name cache value
     * @return True if entry has been added, false otherwise
     */
    public boolean addCache(String id, String name) {
        if(id.isEmpty() || name.isEmpty()){
            return false;
        }
        else{
            cache.put(id, name);
            return true;
        }
    }
    /**
     * Removes all entries in cache
     */
    public void removeCache(){
        cache.removeAll();
        
    }
    /**
     * 
     * @param id cache key
     * @return value corresponding to the key
     */
    public String retrieveCache(String id){
        return (String)cache.get(id);
    }
    
}
