package com.google.android.play.integrity.internal;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class aq extends am implements Set {
    private transient ap a;

    aq() {
    }

    public static aq h() {
        return as.a;
    }

    @Override // com.google.android.play.integrity.internal.am, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: d */
    public abstract at iterator();

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof aq) {
            ((aq) obj).i();
            if (obj.hashCode() != 0) {
                return false;
            }
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    return containsAll(set);
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public final ap f() {
        ap apVar = this.a;
        if (apVar != null) {
            return apVar;
        }
        ap apVarG = g();
        this.a = apVarG;
        return apVarG;
    }

    ap g() {
        throw null;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    boolean i() {
        throw null;
    }
}
