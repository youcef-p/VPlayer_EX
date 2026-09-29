###### Class androidx.savedstate.SavedStateReaderKt__SavedStateReader_androidKt (androidx.savedstate.SavedStateReaderKt__SavedStateReader_androidKt)
.class final synthetic Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;
.super Ljava/lang/Object;
.source "SavedStateReader.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\u001a!\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0002\u00a2\u0006\u0002\u0008\u0005\u001a\u0015\u0010\u0006\u001a\u00020\u0007*\u00060\u0002j\u0002`\u0003H\u0002\u00a2\u0006\u0002\u0008\u0008\u001a3\u0010\t\u001a\u00020\n*\u00060\u0002j\u0002`\u00032\n\u0010\u000b\u001a\u00060\u000cj\u0002`\r2\u0010\u0010\u000e\u001a\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030\u000fH\u0002\u00a2\u0006\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "contentDeepEquals",
        "",
        "Landroid/os/Bundle;",
        "Landroidx/savedstate/SavedState;",
        "other",
        "contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt",
        "contentDeepHashCode",
        "",
        "contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt",
        "contentDeepToString",
        "",
        "result",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "processed",
        "",
        "contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt",
        "savedstate"
    }
    k = 0x5
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
    xs = "androidx/savedstate/SavedStateReaderKt"
.end annotation


# direct methods
.method public static final synthetic access$contentDeepEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$contentDeepHashCode(Landroid/os/Bundle;)I
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$contentDeepToString(Landroid/os/Bundle;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method private static final contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 813
    :cond_4
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    .line 815
    :cond_10
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 816
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 817
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eq v4, v2, :cond_18

    .line 821
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    if-eqz v4, :cond_fe

    if-nez v2, :cond_3a

    goto/16 :goto_fe

    .line 825
    :cond_3a
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_4d

    instance-of v5, v2, Landroid/os/Bundle;

    if-eqz v5, :cond_4d

    check-cast v4, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v4, v2}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_18

    return v3

    .line 826
    :cond_4d
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_60

    instance-of v5, v2, [Ljava/lang/Object;

    if-eqz v5, :cond_60

    check-cast v4, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Lkotlin/collections/ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    return v3

    .line 829
    :cond_60
    instance-of v5, v4, [B

    if-eqz v5, :cond_73

    instance-of v5, v2, [B

    if-eqz v5, :cond_73

    check-cast v4, [B

    check-cast v2, [B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_18

    return v3

    .line 830
    :cond_73
    instance-of v5, v4, [S

    if-eqz v5, :cond_86

    instance-of v5, v2, [S

    if-eqz v5, :cond_86

    check-cast v4, [S

    check-cast v2, [S

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    if-nez v2, :cond_18

    return v3

    .line 831
    :cond_86
    instance-of v5, v4, [I

    if-eqz v5, :cond_99

    instance-of v5, v2, [I

    if-eqz v5, :cond_99

    check-cast v4, [I

    check-cast v2, [I

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_18

    return v3

    .line 832
    :cond_99
    instance-of v5, v4, [J

    if-eqz v5, :cond_ac

    instance-of v5, v2, [J

    if-eqz v5, :cond_ac

    check-cast v4, [J

    check-cast v2, [J

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_18

    return v3

    .line 833
    :cond_ac
    instance-of v5, v4, [F

    if-eqz v5, :cond_bf

    instance-of v5, v2, [F

    if-eqz v5, :cond_bf

    check-cast v4, [F

    check-cast v2, [F

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_18

    return v3

    .line 834
    :cond_bf
    instance-of v5, v4, [D

    if-eqz v5, :cond_d2

    instance-of v5, v2, [D

    if-eqz v5, :cond_d2

    check-cast v4, [D

    check-cast v2, [D

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-nez v2, :cond_18

    return v3

    .line 835
    :cond_d2
    instance-of v5, v4, [C

    if-eqz v5, :cond_e5

    instance-of v5, v2, [C

    if-eqz v5, :cond_e5

    check-cast v4, [C

    check-cast v2, [C

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_18

    return v3

    .line 836
    :cond_e5
    instance-of v5, v4, [Z

    if-eqz v5, :cond_f8

    instance-of v5, v2, [Z

    if-eqz v5, :cond_f8

    check-cast v4, [Z

    check-cast v2, [Z

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-nez v2, :cond_18

    return v3

    .line 839
    :cond_f8
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_fe
    :goto_fe
    return v3

    :cond_ff
    return v0
.end method

.method private static final contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;)I
    .registers 5

    .line 848
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 850
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 852
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_25

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;)I

    move-result v2

    goto/16 :goto_90

    .line 853
    :cond_25
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_30

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->contentDeepHashCode([Ljava/lang/Object;)I

    move-result v2

    goto :goto_90

    .line 856
    :cond_30
    instance-of v3, v2, [B

    if-eqz v3, :cond_3b

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_90

    .line 857
    :cond_3b
    instance-of v3, v2, [S

    if-eqz v3, :cond_46

    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([S)I

    move-result v2

    goto :goto_90

    .line 858
    :cond_46
    instance-of v3, v2, [I

    if-eqz v3, :cond_51

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_90

    .line 859
    :cond_51
    instance-of v3, v2, [J

    if-eqz v3, :cond_5c

    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    goto :goto_90

    .line 860
    :cond_5c
    instance-of v3, v2, [F

    if-eqz v3, :cond_67

    check-cast v2, [F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    goto :goto_90

    .line 861
    :cond_67
    instance-of v3, v2, [D

    if-eqz v3, :cond_72

    check-cast v2, [D

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    goto :goto_90

    .line 862
    :cond_72
    instance-of v3, v2, [C

    if-eqz v3, :cond_7d

    check-cast v2, [C

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v2

    goto :goto_90

    .line 863
    :cond_7d
    instance-of v3, v2, [Z

    if-eqz v3, :cond_88

    check-cast v2, [Z

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    goto :goto_90

    :cond_88
    if-eqz v2, :cond_8f

    .line 866
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_90

    :cond_8f
    const/4 v2, 0x0

    :goto_90
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    goto/16 :goto_9

    :cond_95
    return v1
.end method

.method private static final contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 878
    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 879
    const-string p0, "[...]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 882
    :cond_c
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x5b

    .line 883
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10c

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 887
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 891
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_109

    .line 893
    :cond_5a
    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_67

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, p1, p2}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Ljava/lang/StringBuilder;Ljava/util/List;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_109

    .line 894
    :cond_67
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_76

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->contentDeepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_109

    .line 897
    :cond_76
    instance-of v3, v1, [B

    const-string v4, "toString(...)"

    if-eqz v3, :cond_8a

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_109

    .line 898
    :cond_8a
    instance-of v3, v1, [S

    if-eqz v3, :cond_9c

    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_109

    .line 899
    :cond_9c
    instance-of v3, v1, [I

    if-eqz v3, :cond_ad

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_109

    .line 900
    :cond_ad
    instance-of v3, v1, [J

    if-eqz v3, :cond_be

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_109

    .line 901
    :cond_be
    instance-of v3, v1, [F

    if-eqz v3, :cond_cf

    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_109

    .line 902
    :cond_cf
    instance-of v3, v1, [D

    if-eqz v3, :cond_e0

    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_109

    .line 903
    :cond_e0
    instance-of v3, v1, [C

    if-eqz v3, :cond_f1

    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_109

    .line 904
    :cond_f1
    instance-of v3, v1, [Z

    if-eqz v3, :cond_102

    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_109

    .line 907
    :cond_102
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_109
    move v1, v2

    goto/16 :goto_22

    :cond_10c
    const/16 p0, 0x5d

    .line 911
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 912
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p0

    invoke-interface {p2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method
