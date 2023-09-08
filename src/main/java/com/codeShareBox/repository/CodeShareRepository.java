package com.codeShareBox.repository;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.codeShareBox.model.CodeShare;

import java.util.List;
import java.util.UUID;

public interface CodeShareRepository extends JpaRepository<CodeShare, UUID> {

    /**
     * Find the top 10 code shares that meet the given maximum views and maximum time criteria,
     * ordered by date in descending order.
     *
     * @param maxViews The maximum allowed views for a code share.
     * @param maxTime  The maximum allowed time (in seconds) for a code share.
     * @param pageable The Pageable object for pagination.
     * @return A list of code shares that meet the criteria.
     */
    @Query("SELECT c FROM CodeShare c WHERE c.views <= :maxViews AND c.time <= :maxTime ORDER BY c.date DESC")
    List<CodeShare> findTop10ByViewsAndTime(
            @Param("maxViews") long maxViews,
            @Param("maxTime") long maxTime,
            Pageable pageable
    );
}

