###### Class androidx.core.provider.FontProvider (androidx.core.provider.FontProvider)
.class Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontProvider$ProviderCacheKey;,
        Landroidx/core/provider/FontProvider$ContentQueryWrapper;,
        Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;,
        Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;
    }
.end annotation


# static fields
.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final sProviderCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Landroidx/core/provider/FontProvider$ProviderCacheKey;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 120
    new-instance v0, Landroidx/collection/LruCache;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/provider/FontProvider;->sProviderCache:Landroidx/collection/LruCache;

    .line 290
    new-instance v0, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearProviderCache()V
    .registers 1

    .line 128
    sget-object v0, Landroidx/core/provider/FontProvider;->sProviderCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    return-void
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 318
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 304
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    move v0, v2

    .line 307
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 308
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 284
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 286
    :cond_b
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result p0

    .line 287
    invoke-static {p1, p0}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getFontFamilyResult(Landroid/content/Context;Ljava/util/List;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/provider/FontRequest;",
            ">;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Landroidx/core/provider/FontsContractCompat$FontFamilyResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 62
    const-string v0, "FontProvider.getFontFamilyResult"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 65
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 66
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 67
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/provider/FontRequest;

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 68
    invoke-static {v4, v3, v5}, Landroidx/core/provider/FontProvider;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_33

    const/4 p0, 0x0

    .line 71
    move-object p1, p0

    check-cast p1, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    const/4 p1, 0x1

    invoke-static {p1, p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_47

    .line 83
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object p0

    .line 75
    :cond_33
    :try_start_33
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, v3, v4, p2}, Landroidx/core/provider/FontProvider;->query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v3

    .line 77
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 80
    :cond_3f
    invoke-static {v1, v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(ILjava/util/List;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object p0
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_47

    .line 83
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object p0

    :catchall_47
    move-exception p0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 85
    throw p0
.end method

.method static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string v0, "Found content provider "

    const-string v1, "No package found for authority: "

    .line 142
    const-string v2, "FontProvider.getProvider"

    invoke-static {v2}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 145
    :try_start_9
    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object p2

    .line 146
    new-instance v2, Landroidx/core/provider/FontProvider$ProviderCacheKey;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p2}, Landroidx/core/provider/FontProvider$ProviderCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 148
    sget-object v3, Landroidx/core/provider/FontProvider;->sProviderCache:Landroidx/collection/LruCache;

    invoke-virtual {v3, v2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_b3

    if-eqz v3, :cond_28

    .line 184
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v3

    .line 152
    :cond_28
    :try_start_28
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 153
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_a0

    .line 159
    iget-object v1, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 168
    iget-object p1, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 170
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Landroidx/core/provider/FontProvider;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object p0

    .line 171
    sget-object p1, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    :goto_52
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_7a

    .line 174
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    sget-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    invoke-static {p0, p1}, Landroidx/core/provider/FontProvider;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 177
    sget-object p0, Landroidx/core/provider/FontProvider;->sProviderCache:Landroidx/collection/LruCache;

    invoke-virtual {p0, v2, v5}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_28 .. :try_end_73} :catchall_b3

    .line 184
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v5

    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_7a
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    const/4 p0, 0x0

    return-object p0

    .line 160
    :cond_7f
    :try_start_7f
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", but package was not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 162
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_a0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b3
    .catchall {:try_start_7f .. :try_end_b3} :catchall_b3

    :catchall_b3
    move-exception p0

    .line 184
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 186
    throw p0
.end method

.method static synthetic lambda$static$0([B[B)I
    .registers 6

    .line 291
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_8

    .line 292
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    return p0

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    .line 294
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 295
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_15

    sub-int/2addr v2, v3

    return v2

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return v0
.end method

.method static query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 21

    move-object/from16 v0, p2

    .line 200
    const-string v1, "result_code"

    const-string v2, "font_italic"

    const-string v3, "font_weight"

    const-string v4, "font_ttc_index"

    const-string v5, "file_id"

    const-string v6, "_id"

    const-string v7, "content"

    const-string v8, "FontProvider.query"

    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 203
    :try_start_15
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v9, Landroid/net/Uri$Builder;

    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v9, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 205
    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 206
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 207
    new-instance v9, Landroid/net/Uri$Builder;

    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v9, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 208
    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v7, "file"

    .line 209
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v7, p0

    .line 212
    invoke-static {v7, v11}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->make(Landroid/content/Context;Landroid/net/Uri;)Landroidx/core/provider/FontProvider$ContentQueryWrapper;

    move-result-object v10
    :try_end_48
    .catchall {:try_start_15 .. :try_end_48} :catchall_11b

    const/4 v7, 0x7

    .line 214
    :try_start_49
    new-array v12, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v12, v7

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v14, 0x2

    aput-object v4, v12, v14

    const-string v14, "font_variation_settings"

    const/4 v15, 0x3

    aput-object v14, v12, v15

    const/4 v14, 0x4

    aput-object v3, v12, v14

    const/4 v14, 0x5

    aput-object v2, v12, v14

    const/4 v14, 0x6

    aput-object v1, v12, v14

    .line 221
    const-string v14, "ContentQueryWrapper.query"

    invoke-static {v14}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_110

    .line 224
    :try_start_67
    const-string v14, "query = ?"

    move-object v15, v14

    new-array v14, v13, [Ljava/lang/String;

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v7

    move/from16 v16, v13

    move-object v13, v15

    const/4 v15, 0x0

    move/from16 v9, v16

    move-object/from16 v16, p3

    .line 224
    invoke-interface/range {v10 .. v16}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_7e
    .catchall {:try_start_67 .. :try_end_7e} :catchall_10b

    .line 228
    :try_start_7e
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    if-eqz v12, :cond_f3

    .line 232
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_f3

    .line 233
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 235
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 238
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 240
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 242
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 244
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 246
    :goto_a6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_f3

    const/4 v13, -0x1

    if-eq v1, v13, :cond_b4

    .line 248
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto :goto_b5

    :cond_b4
    move v14, v7

    :goto_b5
    if-eq v4, v13, :cond_bc

    .line 251
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    goto :goto_bd

    :cond_bc
    move v15, v7

    :goto_bd
    if-ne v5, v13, :cond_ca

    move-object/from16 p0, v8

    .line 254
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 255
    invoke-static {v11, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    goto :goto_d4

    :cond_ca
    move-object/from16 p0, v8

    .line 257
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 258
    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    :goto_d4
    if-eq v3, v13, :cond_db

    .line 261
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_dd

    :cond_db
    const/16 v8, 0x190

    :goto_dd
    if-eq v2, v13, :cond_e7

    .line 263
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v9, :cond_e7

    move v13, v9

    goto :goto_e8

    :cond_e7
    const/4 v13, 0x0

    .line 265
    :goto_e8
    invoke-static {v7, v15, v8, v13, v14}, Landroidx/core/provider/FontsContractCompat$FontInfo;->create(Landroid/net/Uri;IIZI)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v7

    move-object/from16 v8, p0

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f1
    .catchall {:try_start_7e .. :try_end_f1} :catchall_108

    const/4 v7, 0x0

    goto :goto_a6

    :cond_f3
    if-eqz v12, :cond_f8

    .line 270
    :try_start_f5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_f8
    invoke-interface {v10}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->close()V

    const/4 v0, 0x0

    .line 274
    new-array v0, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;
    :try_end_104
    .catchall {:try_start_f5 .. :try_end_104} :catchall_11b

    .line 277
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_108
    move-exception v0

    move-object v9, v12

    goto :goto_112

    :catchall_10b
    move-exception v0

    .line 228
    :try_start_10c
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 230
    throw v0
    :try_end_110
    .catchall {:try_start_10c .. :try_end_110} :catchall_110

    :catchall_110
    move-exception v0

    const/4 v9, 0x0

    :goto_112
    if-eqz v9, :cond_117

    .line 270
    :try_start_114
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_117
    invoke-interface {v10}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->close()V

    .line 273
    throw v0
    :try_end_11b
    .catchall {:try_start_114 .. :try_end_11b} :catchall_11b

    :catchall_11b
    move-exception v0

    .line 277
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 279
    throw v0
.end method

###### Class androidx.core.provider.FontProvider.ContentQueryWrapper (androidx.core.provider.FontProvider$ContentQueryWrapper)
.class interface abstract Landroidx/core/provider/FontProvider$ContentQueryWrapper;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ContentQueryWrapper"
.end annotation


# direct methods
.method public static make(Landroid/content/Context;Landroid/net/Uri;)Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    .registers 3

    .line 340
    new-instance v0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end method

###### Class androidx.core.provider.FontProvider.ContentQueryWrapperApi16Impl (androidx.core.provider.FontProvider$ContentQueryWrapperApi16Impl)
.class Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;
.super Ljava/lang/Object;
.source "FontProvider.java"

# interfaces
.implements Landroidx/core/provider/FontProvider$ContentQueryWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentQueryWrapperApi16Impl"
.end annotation


# instance fields
.field private final mClient:Landroid/content/ContentProviderClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;->mClient:Landroid/content/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 368
    iget-object v0, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_7

    .line 369
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_7
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 15

    .line 354
    iget-object v0, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;->mClient:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    if-nez v0, :cond_6

    return-object v7

    :cond_6
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 358
    :try_start_c
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception v0

    move-object p1, v0

    .line 361
    const-string p2, "FontsProvider"

    const-string p3, "Unable to query the content provider"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7
.end method

###### Class androidx.core.provider.FontProvider.ContentQueryWrapperApi24Impl (androidx.core.provider.FontProvider$ContentQueryWrapperApi24Impl)
.class Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;
.super Ljava/lang/Object;
.source "FontProvider.java"

# interfaces
.implements Landroidx/core/provider/FontProvider$ContentQueryWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentQueryWrapperApi24Impl"
.end annotation


# instance fields
.field private final mClient:Landroid/content/ContentProviderClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;->mClient:Landroid/content/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 398
    iget-object v0, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_7

    .line 399
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_7
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 15

    .line 384
    iget-object v0, p0, Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;->mClient:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    if-nez v0, :cond_6

    return-object v7

    :cond_6
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 388
    :try_start_c
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception v0

    move-object p1, v0

    .line 391
    const-string p2, "FontsProvider"

    const-string p3, "Unable to query the content provider"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7
.end method

###### Class androidx.core.provider.FontProvider.ProviderCacheKey (androidx.core.provider.FontProvider$ProviderCacheKey)
.class Landroidx/core/provider/FontProvider$ProviderCacheKey;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderCacheKey"
.end annotation


# instance fields
.field mAuthority:Ljava/lang/String;

.field mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation
.end field

.field mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mAuthority:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mPackageName:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mCertificates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 103
    :cond_4
    instance-of v1, p1, Landroidx/core/provider/FontProvider$ProviderCacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 104
    :cond_a
    check-cast p1, Landroidx/core/provider/FontProvider$ProviderCacheKey;

    .line 105
    iget-object v1, p0, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mAuthority:Ljava/lang/String;

    iget-object v3, p1, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mAuthority:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mCertificates:Ljava/util/List;

    iget-object p1, p1, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mCertificates:Ljava/util/List;

    .line 106
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    return v0

    :cond_2b
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 112
    iget-object v0, p0, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mAuthority:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/provider/FontProvider$ProviderCacheKey;->mCertificates:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class androidx.core.provider.FontProvider$$ExternalSyntheticLambda0 (androidx.core.provider.FontProvider$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->lambda$static$0([B[B)I

    move-result p1

    return p1
.end method
