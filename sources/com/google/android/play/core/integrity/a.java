package com.google.android.play.core.integrity;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class a extends au {
    private String a;
    private long b;
    private ag c;
    private byte d;

    a() {
    }

    @Override // com.google.android.play.core.integrity.au
    final au a(ag agVar) {
        this.c = agVar;
        return this;
    }

    @Override // com.google.android.play.core.integrity.au
    final au b(long j) {
        this.b = j;
        this.d = (byte) 1;
        return this;
    }

    @Override // com.google.android.play.core.integrity.au
    final au c(String str) {
        this.a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.au
    final av d() {
        String str;
        ag agVar;
        if (this.d == 1 && (str = this.a) != null && (agVar = this.c) != null) {
            return new av(str, this.b, agVar);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" token");
        }
        if (this.d == 0) {
            sb.append(" requestTokenSessionId");
        }
        if (this.c == null) {
            sb.append(" integrityDialogWrapper");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
