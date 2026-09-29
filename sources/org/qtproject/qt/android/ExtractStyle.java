package org.qtproject.qt.android;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.RotateDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.ContextThemeWrapper;
import androidx.core.view.ViewCompat;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.lang.reflect.Field;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class ExtractStyle {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String QtTAG = "QtExtractStyle";
    private static boolean m_extractMinimal = false;
    private static boolean m_missingDarkStyle = false;
    private static boolean m_missingNormalStyle = false;
    private static String m_stylePath;
    final String[] DisableDrawableStatesLabels;
    final int[] DrawableStates;
    final String[] DrawableStatesLabels;
    final int[] ENABLED_FOCUSED_SELECTED_STATE_SET;
    final int[] ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    final int[] ENABLED_FOCUSED_STATE_SET;
    final int[] ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET;
    final int[] ENABLED_SELECTED_STATE_SET;
    final int[] ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    final int[] ENABLED_STATE_SET;
    final int[] ENABLED_WINDOW_FOCUSED_STATE_SET;
    final int[] FOCUSED_SELECTED_STATE_SET;
    final int[] FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    final int[] FOCUSED_STATE_SET;
    final int[] FOCUSED_WINDOW_FOCUSED_STATE_SET;
    final int[] PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET;
    final int[] PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    final int[] PRESSED_ENABLED_FOCUSED_STATE_SET;
    final int[] PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET;
    final int[] PRESSED_ENABLED_SELECTED_STATE_SET;
    final int[] PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    final int[] PRESSED_ENABLED_STATE_SET;
    final int[] PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET;
    final int[] PRESSED_FOCUSED_SELECTED_STATE_SET;
    final int[] PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    final int[] PRESSED_FOCUSED_STATE_SET;
    final int[] PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET;
    final int[] PRESSED_SELECTED_STATE_SET;
    final int[] PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    final int[] PRESSED_STATE_SET;
    final int[] PRESSED_WINDOW_FOCUSED_STATE_SET;
    final int[] SELECTED_STATE_SET;
    final int[] SELECTED_WINDOW_FOCUSED_STATE_SET;
    final int[] WINDOW_FOCUSED_STATE_SET;
    final int defaultBackgroundColor;
    final int defaultTextColor;
    Context m_context;
    private final HashMap<String, DrawableCache> m_drawableCache;
    final String m_extractPath;
    final boolean m_minimal;
    final Resources.Theme m_theme;
    final String[] sScaleTypeArray;
    final int[] viewDrawableStatesState = {R.attr.state_focused, R.attr.state_window_focused, R.attr.state_enabled, R.attr.state_selected, R.attr.state_pressed, R.attr.state_activated, R.attr.state_accelerated, R.attr.state_hovered, R.attr.state_drag_can_accept, R.attr.state_drag_hovered};
    final int[] EMPTY_STATE_SET = new int[0];

    static native int[] extractNativeChunkInfo20(long j);

    private static boolean isUiModeDark(Configuration configuration) {
        return (configuration.uiMode & 48) == 32;
    }

    static String setup(Context context, String str, int i) {
        m_stylePath = context.getApplicationInfo().dataDir + "/qt-reserved-files/android-style/" + i + "/";
        String str2 = "none";
        if (str.equals("none")) {
            return m_stylePath;
        }
        if (str.isEmpty()) {
            str = "minimal";
        }
        if (!str.equals("default") && !str.equals("full") && !str.equals("minimal") && !str.equals("none")) {
            Log.e(QtTAG, "Invalid extract_android_style option \"" + str + "\", defaulting to \"minimal\"");
            str = "minimal";
        }
        if (!str.equals("default") || context.getApplicationInfo().targetSdkVersion >= 28) {
            str2 = str;
        } else {
            Log.e(QtTAG, "extract_android_style option set to \"none\" when targetSdkVersion is less then 28");
        }
        m_missingDarkStyle = Build.VERSION.SDK_INT > 28 && !new File(new StringBuilder().append(m_stylePath).append("darkUiMode/style.json").toString()).exists();
        m_missingNormalStyle = !new File(m_stylePath + "style.json").exists();
        m_extractMinimal = str2.equals("minimal");
        runIfNeeded(context, isUiModeDark(context.getResources().getConfiguration()));
        return m_stylePath;
    }

    static void runIfNeeded(Context context, boolean z) {
        String str = m_stylePath;
        if (str == null) {
            return;
        }
        if (z) {
            if (m_missingDarkStyle) {
                new ExtractStyle(context, m_stylePath + "darkUiMode/", m_extractMinimal);
                m_missingDarkStyle = false;
                return;
            }
            return;
        }
        if (m_missingNormalStyle) {
            new ExtractStyle(context, str, m_extractMinimal);
            m_missingNormalStyle = false;
        }
    }

    ExtractStyle(Context context, String str, boolean z) {
        int[] iArr = {R.attr.state_enabled};
        this.ENABLED_STATE_SET = iArr;
        int[] iArr2 = {R.attr.state_focused};
        this.FOCUSED_STATE_SET = iArr2;
        int[] iArr3 = {R.attr.state_selected};
        this.SELECTED_STATE_SET = iArr3;
        int[] iArr4 = {R.attr.state_pressed};
        this.PRESSED_STATE_SET = iArr4;
        int[] iArr5 = {R.attr.state_window_focused};
        this.WINDOW_FOCUSED_STATE_SET = iArr5;
        int[] iArrStateSetUnion = stateSetUnion(iArr, iArr2);
        this.ENABLED_FOCUSED_STATE_SET = iArrStateSetUnion;
        int[] iArrStateSetUnion2 = stateSetUnion(iArr, iArr3);
        this.ENABLED_SELECTED_STATE_SET = iArrStateSetUnion2;
        this.ENABLED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArr, iArr5);
        int[] iArrStateSetUnion3 = stateSetUnion(iArr2, iArr3);
        this.FOCUSED_SELECTED_STATE_SET = iArrStateSetUnion3;
        this.FOCUSED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArr2, iArr5);
        this.SELECTED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArr3, iArr5);
        int[] iArrStateSetUnion4 = stateSetUnion(iArrStateSetUnion, iArr3);
        this.ENABLED_FOCUSED_SELECTED_STATE_SET = iArrStateSetUnion4;
        this.ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion, iArr5);
        this.ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion2, iArr5);
        this.FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion3, iArr5);
        this.ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion4, iArr5);
        this.PRESSED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArr4, iArr5);
        int[] iArrStateSetUnion5 = stateSetUnion(iArr4, iArr3);
        this.PRESSED_SELECTED_STATE_SET = iArrStateSetUnion5;
        this.PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion5, iArr5);
        int[] iArrStateSetUnion6 = stateSetUnion(iArr4, iArr2);
        this.PRESSED_FOCUSED_STATE_SET = iArrStateSetUnion6;
        this.PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion6, iArr5);
        int[] iArrStateSetUnion7 = stateSetUnion(iArrStateSetUnion6, iArr3);
        this.PRESSED_FOCUSED_SELECTED_STATE_SET = iArrStateSetUnion7;
        this.PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion7, iArr5);
        int[] iArrStateSetUnion8 = stateSetUnion(iArr4, iArr);
        this.PRESSED_ENABLED_STATE_SET = iArrStateSetUnion8;
        this.PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion8, iArr5);
        int[] iArrStateSetUnion9 = stateSetUnion(iArrStateSetUnion8, iArr3);
        this.PRESSED_ENABLED_SELECTED_STATE_SET = iArrStateSetUnion9;
        this.PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion9, iArr5);
        int[] iArrStateSetUnion10 = stateSetUnion(iArrStateSetUnion8, iArr2);
        this.PRESSED_ENABLED_FOCUSED_STATE_SET = iArrStateSetUnion10;
        this.PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion10, iArr5);
        int[] iArrStateSetUnion11 = stateSetUnion(iArrStateSetUnion10, iArr3);
        this.PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET = iArrStateSetUnion11;
        this.PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = stateSetUnion(iArrStateSetUnion11, iArr5);
        this.DrawableStates = new int[]{R.attr.state_active, R.attr.state_checked, R.attr.state_enabled, R.attr.state_focused, R.attr.state_pressed, R.attr.state_selected, R.attr.state_window_focused, R.id.background, R.attr.state_multiline, R.attr.state_activated, R.attr.state_accelerated};
        this.DrawableStatesLabels = new String[]{"active", "checked", "enabled", "focused", "pressed", "selected", "window_focused", "background", "multiline", "activated", "accelerated"};
        this.DisableDrawableStatesLabels = new String[]{"inactive", "unchecked", "disabled", "not_focused", "no_pressed", "unselected", "window_not_focused", "background", "multiline", "activated", "accelerated"};
        this.sScaleTypeArray = new String[]{"MATRIX", "FIT_XY", "FIT_START", "FIT_CENTER", "FIT_END", "CENTER", "CENTER_CROP", "CENTER_INSIDE"};
        this.m_drawableCache = new HashMap<>();
        this.m_minimal = z;
        String str2 = str + "/";
        this.m_extractPath = str2;
        if (!new File(str2).mkdirs()) {
            Log.w("Qt JAVA", "Cannot create Android style directory.");
        }
        this.m_context = context;
        Resources.Theme theme = context.getTheme();
        this.m_theme = theme;
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(new int[]{R.attr.colorBackground, R.attr.textColorPrimary, R.attr.textColor});
        this.defaultBackgroundColor = typedArrayObtainStyledAttributes.getColor(0, 0);
        int color = typedArrayObtainStyledAttributes.getColor(1, ViewCompat.MEASURED_SIZE_MASK);
        this.defaultTextColor = color == 16777215 ? typedArrayObtainStyledAttributes.getColor(2, ViewCompat.MEASURED_SIZE_MASK) : color;
        typedArrayObtainStyledAttributes.recycle();
        try {
            SimpleJsonWriter simpleJsonWriter = new SimpleJsonWriter(str2 + "style.json");
            simpleJsonWriter.beginObject();
            try {
                simpleJsonWriter.name("defaultStyle").value(extractDefaultPalette());
                extractWindow(simpleJsonWriter);
                simpleJsonWriter.name("buttonStyle").value(extractTextAppearanceInformation(R.attr.buttonStyle, "QPushButton"));
                simpleJsonWriter.name("spinnerStyle").value(extractTextAppearanceInformation(R.attr.spinnerStyle, "QComboBox"));
                extractProgressBar(simpleJsonWriter, R.attr.progressBarStyleHorizontal, "progressBarStyleHorizontal", "QProgressBar");
                extractProgressBar(simpleJsonWriter, R.attr.progressBarStyleLarge, "progressBarStyleLarge", null);
                extractProgressBar(simpleJsonWriter, R.attr.progressBarStyleSmall, "progressBarStyleSmall", null);
                extractProgressBar(simpleJsonWriter, R.attr.progressBarStyle, "progressBarStyle", null);
                extractAbsSeekBar(simpleJsonWriter);
                extractSwitch(simpleJsonWriter);
                extractCompoundButton(simpleJsonWriter, R.attr.checkboxStyle, "checkboxStyle", "QCheckBox");
                simpleJsonWriter.name("editTextStyle").value(extractTextAppearanceInformation(R.attr.editTextStyle, "QLineEdit"));
                extractCompoundButton(simpleJsonWriter, R.attr.radioButtonStyle, "radioButtonStyle", "QRadioButton");
                simpleJsonWriter.name("textViewStyle").value(extractTextAppearanceInformation(R.attr.textViewStyle, "QWidget"));
                simpleJsonWriter.name("scrollViewStyle").value(extractTextAppearanceInformation(R.attr.scrollViewStyle, "QAbstractScrollArea"));
                extractListView(simpleJsonWriter);
                simpleJsonWriter.name("listSeparatorTextViewStyle").value(extractTextAppearanceInformation(R.attr.listSeparatorTextViewStyle, null));
                extractItemsStyle(simpleJsonWriter);
                extractCompoundButton(simpleJsonWriter, R.attr.buttonStyleToggle, "buttonStyleToggle", null);
                extractCalendar(simpleJsonWriter);
                extractToolBar(simpleJsonWriter);
                simpleJsonWriter.name("actionButtonStyle").value(extractTextAppearanceInformation(R.attr.actionButtonStyle, "QToolButton"));
                simpleJsonWriter.name("actionBarTabTextStyle").value(extractTextAppearanceInformation(R.attr.actionBarTabTextStyle, null));
                simpleJsonWriter.name("actionBarTabStyle").value(extractTextAppearanceInformation(R.attr.actionBarTabStyle, null));
                simpleJsonWriter.name("actionOverflowButtonStyle").value(extractImageViewInformation(R.attr.actionOverflowButtonStyle, null));
                extractTabBar(simpleJsonWriter);
            } catch (Exception e) {
                e.printStackTrace();
            }
            simpleJsonWriter.endObject();
            simpleJsonWriter.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private int[] stateSetUnion(int[] iArr, int[] iArr2) {
        int i;
        try {
            int length = iArr.length;
            int length2 = iArr2.length;
            int[] iArr3 = new int[length + length2];
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 : this.viewDrawableStatesState) {
                if (i2 < length && iArr[i2] == i5) {
                    i = i4 + 1;
                    iArr3[i4] = i5;
                    i2++;
                } else if (i3 < length2 && iArr2[i3] == i5) {
                    i = i4 + 1;
                    iArr3[i4] = i5;
                    i3++;
                }
                i4 = i;
            }
            return iArr3;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    Field getAccessibleField(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    Field tryGetAccessibleField(Class<?> cls, String str) {
        if (cls == null) {
            return null;
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Exception unused) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                Field fieldTryGetAccessibleField = tryGetAccessibleField(cls2, str);
                if (fieldTryGetAccessibleField != null) {
                    return fieldTryGetAccessibleField;
                }
            }
            return tryGetAccessibleField(cls.getSuperclass(), str);
        }
    }

    JSONObject getColorStateList(ColorStateList colorStateList) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("EMPTY_STATE_SET", colorStateList.getColorForState(this.EMPTY_STATE_SET, 0));
            jSONObject.put("WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("SELECTED_STATE_SET", colorStateList.getColorForState(this.SELECTED_STATE_SET, 0));
            jSONObject.put("SELECTED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.SELECTED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("FOCUSED_STATE_SET", colorStateList.getColorForState(this.FOCUSED_STATE_SET, 0));
            jSONObject.put("FOCUSED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.FOCUSED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("FOCUSED_SELECTED_STATE_SET", colorStateList.getColorForState(this.FOCUSED_SELECTED_STATE_SET, 0));
            jSONObject.put("FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("ENABLED_STATE_SET", colorStateList.getColorForState(this.ENABLED_STATE_SET, 0));
            jSONObject.put("ENABLED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.ENABLED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("ENABLED_SELECTED_STATE_SET", colorStateList.getColorForState(this.ENABLED_SELECTED_STATE_SET, 0));
            jSONObject.put("ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("ENABLED_FOCUSED_STATE_SET", colorStateList.getColorForState(this.ENABLED_FOCUSED_STATE_SET, 0));
            jSONObject.put("ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("ENABLED_FOCUSED_SELECTED_STATE_SET", colorStateList.getColorForState(this.ENABLED_FOCUSED_SELECTED_STATE_SET, 0));
            jSONObject.put("ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("PRESSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_STATE_SET, 0));
            jSONObject.put("PRESSED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("PRESSED_SELECTED_STATE_SET", colorStateList.getColorForState(this.PRESSED_SELECTED_STATE_SET, 0));
            jSONObject.put("PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("PRESSED_FOCUSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_FOCUSED_STATE_SET, 0));
            jSONObject.put("PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("PRESSED_FOCUSED_SELECTED_STATE_SET", colorStateList.getColorForState(this.PRESSED_FOCUSED_SELECTED_STATE_SET, 0));
            jSONObject.put("PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("PRESSED_ENABLED_STATE_SET", colorStateList.getColorForState(this.PRESSED_ENABLED_STATE_SET, 0));
            jSONObject.put("PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("PRESSED_ENABLED_SELECTED_STATE_SET", colorStateList.getColorForState(this.PRESSED_ENABLED_SELECTED_STATE_SET, 0));
            jSONObject.put("PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("PRESSED_ENABLED_FOCUSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_ENABLED_FOCUSED_STATE_SET, 0));
            jSONObject.put("PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET, 0));
            jSONObject.put("PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET", colorStateList.getColorForState(this.PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET, 0));
            jSONObject.put("PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET", colorStateList.getColorForState(this.PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET, 0));
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    JSONObject getStatesList(int[] iArr) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            int i3 = 0;
            while (true) {
                int[] iArr2 = this.DrawableStates;
                if (i3 < iArr2.length) {
                    int i4 = iArr2[i3];
                    if (i2 == i4) {
                        jSONObject.put(this.DrawableStatesLabels[i3], true);
                        break;
                    }
                    if (i2 == (-i4)) {
                        jSONObject.put(this.DrawableStatesLabels[i3], false);
                        break;
                    }
                    i3++;
                } else {
                    jSONObject.put("unhandled_state_" + i2, i2 > 0);
                }
            }
        }
        return jSONObject;
    }

    String getStatesName(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        for (int i : iArr) {
            int i2 = 0;
            while (true) {
                int[] iArr2 = this.DrawableStates;
                if (i2 < iArr2.length) {
                    int i3 = iArr2[i2];
                    if (i == i3) {
                        if (sb.length() > 0) {
                            sb.append("__");
                        }
                        sb.append(this.DrawableStatesLabels[i2]);
                    } else if (i == (-i3)) {
                        if (sb.length() > 0) {
                            sb.append("__");
                        }
                        sb.append(this.DisableDrawableStatesLabels[i2]);
                    } else {
                        i2++;
                    }
                } else {
                    if (sb.length() > 0) {
                        sb.append(";");
                    }
                    sb.append(i);
                }
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return "empty";
    }

    private JSONObject getLayerDrawable(Object obj, String str) {
        JSONObject jSONObject = new JSONObject();
        LayerDrawable layerDrawable = (LayerDrawable) obj;
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        try {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                if (id == -1) {
                    id = i;
                }
                JSONObject drawable = getDrawable(layerDrawable.getDrawable(i), str + "__" + id, null);
                drawable.put("id", id);
                jSONArray.put(drawable);
            }
            jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "layer");
            Rect rect = new Rect();
            if (layerDrawable.getPadding(rect)) {
                jSONObject.put("padding", getJsonRect(rect));
            }
            jSONObject.put("layers", jSONArray);
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    private JSONObject getStateListDrawable(Object obj, String str) {
        int stateCount;
        JSONObject jSONObject = new JSONObject();
        try {
            StateListDrawable stateListDrawable = (StateListDrawable) obj;
            JSONArray jSONArray = new JSONArray();
            if (Build.VERSION.SDK_INT < 29) {
                stateCount = ((Integer) StateListDrawable.class.getMethod("getStateCount", new Class[0]).invoke(stateListDrawable, new Object[0])).intValue();
            } else {
                stateCount = stateListDrawable.getStateCount();
            }
            for (int i = 0; i < stateCount; i++) {
                JSONObject jSONObject2 = new JSONObject();
                Drawable drawable = (Drawable) StateListDrawable.class.getMethod("getStateDrawable", Integer.TYPE).invoke(stateListDrawable, Integer.valueOf(i));
                int[] iArr = (int[]) StateListDrawable.class.getMethod("getStateSet", Integer.TYPE).invoke(stateListDrawable, Integer.valueOf(i));
                if (iArr != null) {
                    jSONObject2.put("states", getStatesList(iArr));
                }
                jSONObject2.put("drawable", getDrawable(drawable, str + "__" + (iArr != null ? getStatesName(iArr) : "state_pos_" + i), null));
                jSONArray.put(jSONObject2);
            }
            jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "stateslist");
            Rect rect = new Rect();
            if (stateListDrawable.getPadding(rect)) {
                jSONObject.put("padding", getJsonRect(rect));
            }
            jSONObject.put("stateslist", jSONArray);
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    private JSONObject getGradientDrawable(GradientDrawable gradientDrawable) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "gradient");
            Drawable.ConstantState constantState = gradientDrawable.getConstantState();
            Class<?> cls = constantState.getClass();
            jSONObject.put("shape", cls.getField("mShape").getInt(constantState));
            jSONObject.put("gradient", cls.getField("mGradient").getInt(constantState));
            GradientDrawable.Orientation orientation = (GradientDrawable.Orientation) cls.getField("mOrientation").get(constantState);
            if (orientation != null) {
                jSONObject.put("orientation", orientation.name());
            }
            int[] iArr = (int[]) cls.getField("mGradientColors").get(constantState);
            if (iArr != null) {
                jSONObject.put("colors", getJsonArray(iArr, 0, iArr.length));
            }
            jSONObject.put("positions", getJsonArray((float[]) cls.getField("mPositions").get(constantState)));
            jSONObject.put("strokeWidth", cls.getField("mStrokeWidth").getInt(constantState));
            jSONObject.put("strokeDashWidth", cls.getField("mStrokeDashWidth").getFloat(constantState));
            jSONObject.put("strokeDashGap", cls.getField("mStrokeDashGap").getFloat(constantState));
            jSONObject.put("radius", cls.getField("mRadius").getFloat(constantState));
            float[] fArr = (float[]) cls.getField("mRadiusArray").get(constantState);
            if (fArr != null) {
                jSONObject.put("radiusArray", getJsonArray(fArr));
            }
            Rect rect = (Rect) cls.getField("mPadding").get(constantState);
            if (rect != null) {
                jSONObject.put("padding", getJsonRect(rect));
            }
            jSONObject.put("width", cls.getField("mWidth").getInt(constantState));
            jSONObject.put("height", cls.getField("mHeight").getInt(constantState));
            jSONObject.put("innerRadiusRatio", cls.getField("mInnerRadiusRatio").getFloat(constantState));
            jSONObject.put("thicknessRatio", cls.getField("mThicknessRatio").getFloat(constantState));
            jSONObject.put("innerRadius", cls.getField("mInnerRadius").getInt(constantState));
            jSONObject.put("thickness", cls.getField("mThickness").getInt(constantState));
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    private JSONObject getRotateDrawable(RotateDrawable rotateDrawable, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "rotate");
            Drawable.ConstantState constantState = rotateDrawable.getConstantState();
            Class<?> cls = constantState.getClass();
            jSONObject.put("drawable", getDrawable(rotateDrawable.getClass().getMethod("getDrawable", new Class[0]).invoke(rotateDrawable, new Object[0]), str, null));
            jSONObject.put("pivotX", getAccessibleField(cls, "mPivotX").getFloat(constantState));
            jSONObject.put("pivotXRel", getAccessibleField(cls, "mPivotXRel").getBoolean(constantState));
            jSONObject.put("pivotY", getAccessibleField(cls, "mPivotY").getFloat(constantState));
            jSONObject.put("pivotYRel", getAccessibleField(cls, "mPivotYRel").getBoolean(constantState));
            jSONObject.put("fromDegrees", getAccessibleField(cls, "mFromDegrees").getFloat(constantState));
            jSONObject.put("toDegrees", getAccessibleField(cls, "mToDegrees").getFloat(constantState));
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    private JSONObject getAnimationDrawable(AnimationDrawable animationDrawable, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "animation");
            jSONObject.put("oneshot", animationDrawable.isOneShot());
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < numberOfFrames; i++) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("duration", animationDrawable.getDuration(i));
                jSONObject2.put("drawable", getDrawable(animationDrawable.getFrame(i), str + "__" + i, null));
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("frames", jSONArray);
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    private JSONObject getJsonRect(Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("left", rect.left);
        jSONObject.put("top", rect.top);
        jSONObject.put("right", rect.right);
        jSONObject.put("bottom", rect.bottom);
        return jSONObject;
    }

    private JSONArray getJsonArray(int[] iArr, int i, int i2) {
        JSONArray jSONArray = new JSONArray();
        if (iArr != null && i >= 0) {
            int iMin = Math.min(i2 + i, iArr.length);
            while (i < iMin) {
                jSONArray.put(iArr[i]);
                i++;
            }
        }
        return jSONArray;
    }

    private JSONArray getJsonArray(float[] fArr) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        if (fArr != null) {
            for (float f : fArr) {
                jSONArray.put(f);
            }
        }
        return jSONArray;
    }

    private JSONObject getJsonChunkInfo(int[] iArr) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (iArr != null && iArr.length >= 3) {
            jSONObject.put("xdivs", getJsonArray(iArr, 3, iArr[0]));
            jSONObject.put("ydivs", getJsonArray(iArr, iArr[0] + 3, iArr[1]));
            jSONObject.put("colors", getJsonArray(iArr, iArr[0] + 3 + iArr[1], iArr[2]));
        }
        return jSONObject;
    }

    private JSONObject findPatchesMarings(Drawable drawable) throws IllegalAccessException, JSONException {
        NinePatch ninePatch;
        Field fieldTryGetAccessibleField = tryGetAccessibleField(NinePatchDrawable.class, "mNinePatch");
        if (fieldTryGetAccessibleField != null) {
            ninePatch = (NinePatch) fieldTryGetAccessibleField.get(drawable);
        } else {
            Object obj = getAccessibleField(NinePatchDrawable.class, "mNinePatchState").get(drawable);
            ninePatch = (NinePatch) getAccessibleField(Objects.requireNonNull(obj).getClass(), "mNinePatch").get(obj);
        }
        return getJsonChunkInfo(extractNativeChunkInfo20(getAccessibleField(((NinePatch) Objects.requireNonNull(ninePatch)).getClass(), "mNativeChunk").getLong(ninePatch)));
    }

    private JSONObject getRippleDrawable(Object obj, String str, Rect rect) {
        JSONObject layerDrawable = getLayerDrawable(obj, str);
        JSONObject jSONObject = new JSONObject();
        try {
            Class<?> cls = Class.forName("android.graphics.drawable.RippleDrawable");
            Object obj2 = getAccessibleField(cls, "mState").get(obj);
            jSONObject.put("mask", getDrawable(getAccessibleField(cls, "mMask").get(obj), str, rect));
            if (obj2 != null) {
                jSONObject.put("maxRadius", getAccessibleField(obj2.getClass(), "mMaxRadius").getInt(obj2));
                ColorStateList colorStateList = (ColorStateList) getAccessibleField(obj2.getClass(), "mColor").get(obj2);
                if (colorStateList != null) {
                    jSONObject.put("color", getColorStateList(colorStateList));
                }
            }
            layerDrawable.put("ripple", jSONObject);
            return layerDrawable;
        } catch (Exception e) {
            e.printStackTrace();
            return layerDrawable;
        }
    }

    private HashMap<Long, Long> getStateTransitions(Object obj) throws Exception {
        HashMap<Long, Long> map = new HashMap<>();
        int i = getAccessibleField(obj.getClass(), "mSize").getInt(obj);
        long[] jArr = (long[]) getAccessibleField(obj.getClass(), "mKeys").get(obj);
        long[] jArr2 = (long[]) getAccessibleField(obj.getClass(), "mValues").get(obj);
        for (int i2 = 0; i2 < i; i2++) {
            if (jArr != null && jArr2 != null) {
                map.put(Long.valueOf(jArr[i2]), Long.valueOf(jArr2[i2]));
            }
        }
        return map;
    }

    private HashMap<Integer, Integer> getStateIds(Object obj) throws Exception {
        HashMap<Integer, Integer> map = new HashMap<>();
        int i = getAccessibleField(obj.getClass(), "mSize").getInt(obj);
        int[] iArr = (int[]) getAccessibleField(obj.getClass(), "mKeys").get(obj);
        int[] iArr2 = (int[]) getAccessibleField(obj.getClass(), "mValues").get(obj);
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr != null && iArr2 != null) {
                map.put(Integer.valueOf(iArr[i2]), Integer.valueOf(iArr2[i2]));
            }
        }
        return map;
    }

    private int findStateIndex(int i, HashMap<Integer, Integer> map) {
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            if (i == entry.getValue().intValue()) {
                return entry.getKey().intValue();
            }
        }
        return -1;
    }

    private JSONObject getAnimatedStateListDrawable(Object obj, String str) {
        JSONObject stateListDrawable = getStateListDrawable(obj, str);
        try {
            Object obj2 = getAccessibleField(Class.forName("android.graphics.drawable.AnimatedStateListDrawable"), "mState").get(obj);
            if (obj2 != null) {
                Class<?> cls = obj2.getClass();
                HashMap<Integer, Integer> stateIds = getStateIds(Objects.requireNonNull(getAccessibleField(cls, "mStateIds").get(obj2)));
                for (Map.Entry<Long, Long> entry : getStateTransitions(Objects.requireNonNull(getAccessibleField(cls, "mTransitions").get(obj2))).entrySet()) {
                    int iFindStateIndex = findStateIndex(entry.getKey().intValue(), stateIds);
                    int iFindStateIndex2 = findStateIndex((int) (entry.getKey().longValue() >> 32), stateIds);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("from", iFindStateIndex2);
                    jSONObject.put("to", iFindStateIndex);
                    jSONObject.put("reverse", (entry.getValue().longValue() >> 32) != 0);
                    stateListDrawable.getJSONArray("stateslist").getJSONObject(entry.getValue().intValue()).put("transition", jSONObject);
                }
            }
            return stateListDrawable;
        } catch (Exception e) {
            e.printStackTrace();
            return stateListDrawable;
        }
    }

    private JSONObject getVPath(Object obj) throws Exception {
        JSONObject jSONObject = new JSONObject();
        Class<?> cls = obj.getClass();
        jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "path");
        jSONObject.put("name", tryGetAccessibleField(cls, "mPathName").get(obj));
        Object[] objArr = (Object[]) tryGetAccessibleField(cls, "mNodes").get(obj);
        JSONArray jSONArray = new JSONArray();
        if (objArr != null) {
            for (Object obj2 : objArr) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, String.valueOf(getAccessibleField(obj2.getClass(), "mType").getChar(obj2)));
                jSONObject2.put("params", getJsonArray((float[]) getAccessibleField(obj2.getClass(), "mParams").get(obj2)));
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("nodes", jSONArray);
        }
        jSONObject.put("isClip", cls.getMethod("isClipPath", new Class[0]).invoke(obj, new Object[0]));
        if (tryGetAccessibleField(cls, "mStrokeColor") == null) {
            return jSONObject;
        }
        jSONObject.put("strokeColor", getAccessibleField(cls, "mStrokeColor").getInt(obj));
        jSONObject.put("strokeWidth", getAccessibleField(cls, "mStrokeWidth").getFloat(obj));
        jSONObject.put("fillColor", getAccessibleField(cls, "mFillColor").getInt(obj));
        jSONObject.put("strokeAlpha", getAccessibleField(cls, "mStrokeAlpha").getFloat(obj));
        jSONObject.put("fillRule", getAccessibleField(cls, "mFillRule").getInt(obj));
        jSONObject.put("fillAlpha", getAccessibleField(cls, "mFillAlpha").getFloat(obj));
        jSONObject.put("trimPathStart", getAccessibleField(cls, "mTrimPathStart").getFloat(obj));
        jSONObject.put("trimPathEnd", getAccessibleField(cls, "mTrimPathEnd").getFloat(obj));
        jSONObject.put("trimPathOffset", getAccessibleField(cls, "mTrimPathOffset").getFloat(obj));
        jSONObject.put("strokeLineCap", getAccessibleField(cls, "mStrokeLineCap").get(obj));
        jSONObject.put("strokeLineJoin", getAccessibleField(cls, "mStrokeLineJoin").get(obj));
        jSONObject.put("strokeMiterlimit", getAccessibleField(cls, "mStrokeMiterlimit").getFloat(obj));
        return jSONObject;
    }

    private JSONObject getVGroup(Object obj) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "group");
        Class<?> cls = obj.getClass();
        jSONObject.put("name", getAccessibleField(cls, "mGroupName").get(obj));
        jSONObject.put("rotate", getAccessibleField(cls, "mRotate").getFloat(obj));
        jSONObject.put("pivotX", getAccessibleField(cls, "mPivotX").getFloat(obj));
        jSONObject.put("pivotY", getAccessibleField(cls, "mPivotY").getFloat(obj));
        jSONObject.put("scaleX", getAccessibleField(cls, "mScaleX").getFloat(obj));
        jSONObject.put("scaleY", getAccessibleField(cls, "mScaleY").getFloat(obj));
        jSONObject.put("translateX", getAccessibleField(cls, "mTranslateX").getFloat(obj));
        jSONObject.put("translateY", getAccessibleField(cls, "mTranslateY").getFloat(obj));
        ArrayList arrayList = (ArrayList) getAccessibleField(cls, "mChildren").get(obj);
        JSONArray jSONArray = new JSONArray();
        if (arrayList != null) {
            for (Object obj2 : arrayList) {
                if (cls.isInstance(obj2)) {
                    jSONArray.put(getVGroup(obj2));
                } else {
                    jSONArray.put(getVPath(obj2));
                }
            }
            jSONObject.put("children", jSONArray);
        }
        return jSONObject;
    }

    private JSONObject getVectorDrawable(Object obj) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "vector");
            Object obj2 = getAccessibleField(Class.forName("android.graphics.drawable.VectorDrawable"), "mVectorState").get(obj);
            Class<?> cls = Objects.requireNonNull(obj2).getClass();
            ColorStateList colorStateList = (ColorStateList) getAccessibleField(cls, "mTint").get(obj2);
            if (colorStateList != null) {
                jSONObject.put("tintList", getColorStateList(colorStateList));
                jSONObject.put("tintMode", getAccessibleField(cls, "mTintMode").get(obj2));
            }
            Object obj3 = getAccessibleField(cls, "mVPathRenderer").get(obj2);
            Class<?> cls2 = Objects.requireNonNull(obj3).getClass();
            jSONObject.put("baseWidth", getAccessibleField(cls2, "mBaseWidth").getFloat(obj3));
            jSONObject.put("baseHeight", getAccessibleField(cls2, "mBaseHeight").getFloat(obj3));
            jSONObject.put("viewportWidth", getAccessibleField(cls2, "mViewportWidth").getFloat(obj3));
            jSONObject.put("viewportHeight", getAccessibleField(cls2, "mViewportHeight").getFloat(obj3));
            jSONObject.put("rootAlpha", getAccessibleField(cls2, "mRootAlpha").getInt(obj3));
            jSONObject.put("rootName", getAccessibleField(cls2, "mRootName").get(obj3));
            jSONObject.put("rootGroup", getVGroup(Objects.requireNonNull(getAccessibleField(cls2, "mRootGroup").get(obj3))));
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:7|(2:9|(2:11|12)(1:13))|14|(1:16)(2:17|(4:19|143|20|(1:22))(2:26|(2:28|29)(2:30|(2:32|33)(2:34|(2:36|37)(2:38|(2:40|41)(2:42|(2:44|45)(2:46|(2:48|49)(2:50|(2:52|53)(2:54|(2:56|57)(2:58|(2:60|61)(3:62|(3:135|64|(2:66|67)(2:68|(2:70|71)))(2:75|(4:77|142|78|(2:80|81)(2:82|(2:84|85)))(2:89|(5:136|91|(1:93)(1:94)|95|96)(5:99|(1:102)|103|(6:105|133|106|(1:108)(2:109|(1:111))|112|113)|116)))|131)))))))))))|140|117|(1:119)|120|138|124|(1:126)|127|131) */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x028d, code lost:
    
        r15 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x028e, code lost:
    
        r15.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02ba, code lost:
    
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02bb, code lost:
    
        r13.printStackTrace();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    org.json.JSONObject getDrawable(java.lang.Object r13, java.lang.String r14, android.graphics.Rect r15) {
        /*
            Method dump skipped, instruction units count: 704
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.qtproject.qt.android.ExtractStyle.getDrawable(java.lang.Object, java.lang.String, android.graphics.Rect):org.json.JSONObject");
    }

    private TypedArray obtainStyledAttributes(int i, int[] iArr) {
        TypedValue typedValue = new TypedValue();
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this.m_context, this.m_theme);
        contextThemeWrapper.getTheme().resolveAttribute(i, typedValue, true);
        return contextThemeWrapper.obtainStyledAttributes(typedValue.data, iArr);
    }

    private ArrayList<Integer> getArrayListFromIntArray(int[] iArr) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    void extractViewInformation(int i, JSONObject jSONObject, String str) {
        extractViewInformation(i, jSONObject, str, null);
    }

    void extractViewInformation(int i, JSONObject jSONObject, String str, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            new ContextThemeWrapper(this.m_context, this.m_theme).getTheme().resolveAttribute(i, new TypedValue(), true);
            int[] iArr = {R.attr.digits, R.attr.background, R.attr.padding, R.attr.paddingLeft, R.attr.paddingTop, R.attr.paddingRight, R.attr.paddingBottom, R.attr.scrollX, R.attr.scrollY, R.attr.id, R.attr.tag, R.attr.fitsSystemWindows, R.attr.focusable, R.attr.focusableInTouchMode, R.attr.clickable, R.attr.longClickable, R.attr.saveEnabled, R.attr.duplicateParentState, R.attr.visibility, R.attr.drawingCacheQuality, R.attr.contentDescription, R.attr.soundEffectsEnabled, R.attr.hapticFeedbackEnabled, R.attr.scrollbars, R.attr.fadingEdge, R.attr.scrollbarStyle, R.attr.scrollbarFadeDuration, R.attr.scrollbarDefaultDelayBeforeFade, R.attr.scrollbarSize, R.attr.scrollbarThumbHorizontal, R.attr.scrollbarThumbVertical, R.attr.scrollbarTrackHorizontal, R.attr.scrollbarTrackVertical, R.attr.isScrollContainer, R.attr.keepScreenOn, R.attr.filterTouchesWhenObscured, R.attr.nextFocusLeft, R.attr.nextFocusRight, R.attr.nextFocusUp, R.attr.nextFocusDown, R.attr.minWidth, R.attr.minHeight, R.attr.onClick, R.attr.overScrollMode, R.attr.paddingStart, R.attr.paddingEnd};
            Arrays.sort(iArr);
            if (attributeSet != null) {
                typedArrayObtainStyledAttributes = this.m_theme.obtainStyledAttributes(attributeSet, iArr, i, 0);
            } else {
                typedArrayObtainStyledAttributes = obtainStyledAttributes(i, iArr);
            }
            ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
            if (str != null) {
                jSONObject.put("qtClass", str);
            }
            jSONObject.put("defaultBackgroundColor", this.defaultBackgroundColor);
            jSONObject.put("defaultTextColorPrimary", this.defaultTextColor);
            jSONObject.put("TextView_digits", typedArrayObtainStyledAttributes.getText(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.digits))));
            jSONObject.put("View_background", getDrawable(typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.background))), i + "_View_background", null));
            jSONObject.put("View_padding", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.padding)), -1));
            jSONObject.put("View_paddingLeft", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.paddingLeft)), -1));
            jSONObject.put("View_paddingTop", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.paddingTop)), -1));
            jSONObject.put("View_paddingRight", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.paddingRight)), -1));
            jSONObject.put("View_paddingBottom", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.paddingBottom)), -1));
            jSONObject.put("View_paddingBottom", typedArrayObtainStyledAttributes.getDimensionPixelOffset(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollX)), 0));
            jSONObject.put("View_scrollY", typedArrayObtainStyledAttributes.getDimensionPixelOffset(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollY)), 0));
            jSONObject.put("View_id", typedArrayObtainStyledAttributes.getResourceId(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.id)), -1));
            jSONObject.put("View_tag", typedArrayObtainStyledAttributes.getText(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.tag))));
            jSONObject.put("View_fitsSystemWindows", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.fitsSystemWindows)), false));
            jSONObject.put("View_focusable", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.focusable)), false));
            jSONObject.put("View_focusableInTouchMode", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.focusableInTouchMode)), false));
            jSONObject.put("View_clickable", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.clickable)), false));
            jSONObject.put("View_longClickable", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.longClickable)), false));
            jSONObject.put("View_saveEnabled", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.saveEnabled)), true));
            jSONObject.put("View_duplicateParentState", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.duplicateParentState)), false));
            jSONObject.put("View_visibility", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.visibility)), 0));
            jSONObject.put("View_drawingCacheQuality", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.drawingCacheQuality)), 0));
            jSONObject.put("View_contentDescription", typedArrayObtainStyledAttributes.getString(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.contentDescription))));
            jSONObject.put("View_soundEffectsEnabled", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.soundEffectsEnabled)), true));
            jSONObject.put("View_hapticFeedbackEnabled", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.hapticFeedbackEnabled)), true));
            jSONObject.put("View_scrollbars", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollbars)), 0));
            jSONObject.put("View_fadingEdge", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.fadingEdge)), 0));
            jSONObject.put("View_scrollbarStyle", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollbarStyle)), 0));
            jSONObject.put("View_scrollbarFadeDuration", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollbarFadeDuration)), 0));
            jSONObject.put("View_scrollbarDefaultDelayBeforeFade", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollbarDefaultDelayBeforeFade)), 0));
            jSONObject.put("View_scrollbarSize", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollbarSize)), -1));
            jSONObject.put("View_scrollbarThumbHorizontal", getDrawable(typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollbarThumbHorizontal))), i + "_View_scrollbarThumbHorizontal", null));
            jSONObject.put("View_scrollbarThumbVertical", getDrawable(typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollbarThumbVertical))), i + "_View_scrollbarThumbVertical", null));
            jSONObject.put("View_scrollbarTrackHorizontal", getDrawable(typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollbarTrackHorizontal))), i + "_View_scrollbarTrackHorizontal", null));
            jSONObject.put("View_scrollbarTrackVertical", getDrawable(typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scrollbarTrackVertical))), i + "_View_scrollbarTrackVertical", null));
            jSONObject.put("View_isScrollContainer", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.isScrollContainer)), false));
            jSONObject.put("View_keepScreenOn", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.keepScreenOn)), false));
            jSONObject.put("View_filterTouchesWhenObscured", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.filterTouchesWhenObscured)), false));
            jSONObject.put("View_nextFocusLeft", typedArrayObtainStyledAttributes.getResourceId(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.nextFocusLeft)), -1));
            jSONObject.put("View_nextFocusRight", typedArrayObtainStyledAttributes.getResourceId(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.nextFocusRight)), -1));
            jSONObject.put("View_nextFocusUp", typedArrayObtainStyledAttributes.getResourceId(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.nextFocusUp)), -1));
            jSONObject.put("View_nextFocusDown", typedArrayObtainStyledAttributes.getResourceId(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.nextFocusDown)), -1));
            jSONObject.put("View_minWidth", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.minWidth)), 0));
            jSONObject.put("View_minHeight", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.minHeight)), 0));
            jSONObject.put("View_onClick", typedArrayObtainStyledAttributes.getString(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.onClick))));
            jSONObject.put("View_overScrollMode", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.overScrollMode)), 1));
            jSONObject.put("View_paddingStart", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.paddingStart)), 0));
            jSONObject.put("View_paddingEnd", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.paddingEnd)), 0));
            typedArrayObtainStyledAttributes.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    JSONObject extractTextAppearance(int i) {
        return extractTextAppearance(i, false);
    }

    JSONObject extractTextAppearance(int i, boolean z) {
        TypedArray typedArrayObtainStyledAttributes;
        int[] iArr = {R.attr.textSize, R.attr.textStyle, R.attr.textColor, R.attr.typeface, R.attr.textAllCaps, R.attr.textColorHint, R.attr.textColorLink, R.attr.textColorHighlight};
        Arrays.sort(iArr);
        if (z) {
            typedArrayObtainStyledAttributes = this.m_theme.obtainStyledAttributes(i, iArr);
        } else {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(i, iArr);
        }
        ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
        JSONObject jSONObject = new JSONObject();
        try {
            int iIndexOf = arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textSize));
            if (typedArrayObtainStyledAttributes.hasValue(iIndexOf)) {
                jSONObject.put("TextAppearance_textSize", typedArrayObtainStyledAttributes.getDimensionPixelSize(iIndexOf, 15));
            }
            int iIndexOf2 = arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textStyle));
            if (typedArrayObtainStyledAttributes.hasValue(iIndexOf2)) {
                jSONObject.put("TextAppearance_textStyle", typedArrayObtainStyledAttributes.getInt(iIndexOf2, -1));
            }
            ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textColor)));
            if (colorStateList != null) {
                jSONObject.put("TextAppearance_textColor", getColorStateList(colorStateList));
            }
            int iIndexOf3 = arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.typeface));
            if (typedArrayObtainStyledAttributes.hasValue(iIndexOf3)) {
                jSONObject.put("TextAppearance_typeface", typedArrayObtainStyledAttributes.getInt(iIndexOf3, -1));
            }
            int iIndexOf4 = arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textAllCaps));
            if (typedArrayObtainStyledAttributes.hasValue(iIndexOf4)) {
                jSONObject.put("TextAppearance_textAllCaps", typedArrayObtainStyledAttributes.getBoolean(iIndexOf4, false));
            }
            ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textColorHint)));
            if (colorStateList2 != null) {
                jSONObject.put("TextAppearance_textColorHint", getColorStateList(colorStateList2));
            }
            ColorStateList colorStateList3 = typedArrayObtainStyledAttributes.getColorStateList(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textColorLink)));
            if (colorStateList3 != null) {
                jSONObject.put("TextAppearance_textColorLink", getColorStateList(colorStateList3));
            }
            int iIndexOf5 = arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textColorHighlight));
            if (typedArrayObtainStyledAttributes.hasValue(iIndexOf5)) {
                jSONObject.put("TextAppearance_textColorHighlight", typedArrayObtainStyledAttributes.getColor(iIndexOf5, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    JSONObject extractTextAppearanceInformation(int i, String str) {
        return extractTextAppearanceInformation(i, str, R.attr.textAppearance, null);
    }

    JSONObject extractTextAppearanceInformation(int i, String str, int i2, AttributeSet attributeSet) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z;
        int color;
        JSONObject jSONObject = new JSONObject();
        extractViewInformation(i, jSONObject, str, attributeSet);
        int i9 = i2;
        if (i9 == -1) {
            i9 = R.attr.textAppearance;
        }
        try {
            TypedValue typedValue = new TypedValue();
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this.m_context, this.m_theme);
            contextThemeWrapper.getTheme().resolveAttribute(i, typedValue, true);
            TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(typedValue.data, new int[]{i9});
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
            typedArrayObtainStyledAttributes.recycle();
            int dimensionPixelSize = 15;
            if (resourceId != -1) {
                int[] iArr = {R.attr.textSize, R.attr.textStyle, R.attr.typeface, R.attr.textAllCaps, R.attr.textColorHighlight};
                Arrays.sort(iArr);
                i3 = 16843660;
                TypedArray typedArrayObtainStyledAttributes2 = this.m_theme.obtainStyledAttributes(resourceId, iArr);
                ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
                dimensionPixelSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textSize)), 15);
                i8 = typedArrayObtainStyledAttributes2.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textStyle)), -1);
                i4 = 16842903;
                i7 = typedArrayObtainStyledAttributes2.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.typeface)), -1);
                i5 = 16842902;
                color = typedArrayObtainStyledAttributes2.getColor(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textColorHighlight)), 0);
                i6 = 16842901;
                z = typedArrayObtainStyledAttributes2.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textAllCaps)), false);
                typedArrayObtainStyledAttributes2.recycle();
            } else {
                i3 = 16843660;
                i4 = 16842903;
                i5 = 16842902;
                i6 = 16842901;
                i7 = -1;
                i8 = -1;
                z = false;
                color = 0;
            }
            int[] iArr2 = {R.attr.editable, R.attr.inputMethod, R.attr.numeric, R.attr.digits, R.attr.phoneNumber, R.attr.autoText, R.attr.capitalize, R.attr.bufferType, R.attr.selectAllOnFocus, R.attr.autoLink, R.attr.linksClickable, R.attr.drawableLeft, R.attr.drawableTop, R.attr.drawableRight, R.attr.drawableBottom, R.attr.drawableStart, R.attr.drawableEnd, R.attr.maxLines, R.attr.drawablePadding, R.attr.textCursorDrawable, R.attr.maxHeight, R.attr.lines, R.attr.height, R.attr.minLines, R.attr.minHeight, R.attr.maxEms, R.attr.maxWidth, R.attr.ems, R.attr.width, R.attr.minEms, R.attr.minWidth, R.attr.gravity, R.attr.hint, R.attr.text, R.attr.scrollHorizontally, R.attr.singleLine, R.attr.ellipsize, R.attr.marqueeRepeatLimit, R.attr.includeFontPadding, R.attr.cursorVisible, R.attr.maxLength, R.attr.textScaleX, R.attr.freezesText, R.attr.shadowColor, R.attr.shadowDx, R.attr.shadowDy, R.attr.shadowRadius, R.attr.enabled, R.attr.textColorHighlight, R.attr.textColor, R.attr.textColorHint, R.attr.textColorLink, R.attr.textSize, R.attr.typeface, R.attr.textStyle, R.attr.password, R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier, R.attr.inputType, R.attr.imeOptions, R.attr.imeActionLabel, R.attr.imeActionId, R.attr.privateImeOptions, R.attr.textSelectHandleLeft, R.attr.textSelectHandleRight, R.attr.textSelectHandle, R.attr.textIsSelectable, R.attr.textAllCaps};
            Arrays.sort(iArr2);
            TypedArray typedArrayObtainStyledAttributes3 = contextThemeWrapper.obtainStyledAttributes(typedValue.data, iArr2);
            ArrayList<Integer> arrayListFromIntArray2 = getArrayListFromIntArray(iArr2);
            int dimensionPixelSize2 = typedArrayObtainStyledAttributes3.getDimensionPixelSize(arrayListFromIntArray2.indexOf(Integer.valueOf(i6)), dimensionPixelSize);
            int i10 = typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(i4)), i8);
            int i11 = typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(i5)), i7);
            int color2 = typedArrayObtainStyledAttributes3.getColor(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textColorHighlight)), color);
            boolean z2 = typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(i3)), z);
            ColorStateList colorStateList = typedArrayObtainStyledAttributes3.getColorStateList(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textColor)));
            ColorStateList colorStateList2 = typedArrayObtainStyledAttributes3.getColorStateList(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textColorHint)));
            ColorStateList colorStateList3 = typedArrayObtainStyledAttributes3.getColorStateList(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textColorLink)));
            jSONObject.put("TextAppearance_textSize", dimensionPixelSize2);
            jSONObject.put("TextAppearance_textStyle", i10);
            jSONObject.put("TextAppearance_typeface", i11);
            jSONObject.put("TextAppearance_textColorHighlight", color2);
            jSONObject.put("TextAppearance_textAllCaps", z2);
            if (colorStateList != null) {
                jSONObject.put("TextAppearance_textColor", getColorStateList(colorStateList));
            }
            if (colorStateList2 != null) {
                jSONObject.put("TextAppearance_textColorHint", getColorStateList(colorStateList2));
            }
            if (colorStateList3 != null) {
                jSONObject.put("TextAppearance_textColorLink", getColorStateList(colorStateList3));
            }
            jSONObject.put("TextView_editable", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.editable)), false));
            jSONObject.put("TextView_inputMethod", typedArrayObtainStyledAttributes3.getText(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.inputMethod))));
            jSONObject.put("TextView_numeric", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.numeric)), 0));
            jSONObject.put("TextView_digits", typedArrayObtainStyledAttributes3.getText(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.digits))));
            jSONObject.put("TextView_phoneNumber", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.phoneNumber)), false));
            jSONObject.put("TextView_autoText", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.autoText)), false));
            jSONObject.put("TextView_capitalize", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.capitalize)), -1));
            jSONObject.put("TextView_bufferType", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.bufferType)), 0));
            jSONObject.put("TextView_selectAllOnFocus", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.selectAllOnFocus)), false));
            jSONObject.put("TextView_autoLink", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.autoLink)), 0));
            jSONObject.put("TextView_linksClickable", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.linksClickable)), true));
            jSONObject.put("TextView_drawableLeft", getDrawable(typedArrayObtainStyledAttributes3.getDrawable(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.drawableLeft))), i + "_TextView_drawableLeft", null));
            jSONObject.put("TextView_drawableTop", getDrawable(typedArrayObtainStyledAttributes3.getDrawable(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.drawableTop))), i + "_TextView_drawableTop", null));
            jSONObject.put("TextView_drawableRight", getDrawable(typedArrayObtainStyledAttributes3.getDrawable(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.drawableRight))), i + "_TextView_drawableRight", null));
            jSONObject.put("TextView_drawableBottom", getDrawable(typedArrayObtainStyledAttributes3.getDrawable(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.drawableBottom))), i + "_TextView_drawableBottom", null));
            jSONObject.put("TextView_drawableStart", getDrawable(typedArrayObtainStyledAttributes3.getDrawable(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.drawableStart))), i + "_TextView_drawableStart", null));
            jSONObject.put("TextView_drawableEnd", getDrawable(typedArrayObtainStyledAttributes3.getDrawable(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.drawableEnd))), i + "_TextView_drawableEnd", null));
            jSONObject.put("TextView_maxLines", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.maxLines)), -1));
            jSONObject.put("TextView_drawablePadding", typedArrayObtainStyledAttributes3.getDimensionPixelSize(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.drawablePadding)), 0));
            try {
                jSONObject.put("TextView_textCursorDrawable", getDrawable(typedArrayObtainStyledAttributes3.getDrawable(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textCursorDrawable))), i + "_TextView_textCursorDrawable", null));
            } catch (Exception unused) {
                jSONObject.put("TextView_textCursorDrawable", getDrawable(this.m_context.getResources().getDrawable(typedArrayObtainStyledAttributes3.getResourceId(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textCursorDrawable)), 0), this.m_theme), i + "_TextView_textCursorDrawable", null));
            }
            jSONObject.put("TextView_maxLines", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.maxLines)), -1));
            jSONObject.put("TextView_maxHeight", typedArrayObtainStyledAttributes3.getDimensionPixelSize(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.maxHeight)), -1));
            jSONObject.put("TextView_lines", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.lines)), -1));
            jSONObject.put("TextView_height", typedArrayObtainStyledAttributes3.getDimensionPixelSize(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.height)), -1));
            jSONObject.put("TextView_minLines", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.minLines)), -1));
            jSONObject.put("TextView_minHeight", typedArrayObtainStyledAttributes3.getDimensionPixelSize(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.minHeight)), -1));
            jSONObject.put("TextView_maxEms", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.maxEms)), -1));
            jSONObject.put("TextView_maxWidth", typedArrayObtainStyledAttributes3.getDimensionPixelSize(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.maxWidth)), -1));
            jSONObject.put("TextView_ems", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.ems)), -1));
            jSONObject.put("TextView_width", typedArrayObtainStyledAttributes3.getDimensionPixelSize(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.width)), -1));
            jSONObject.put("TextView_minEms", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.minEms)), -1));
            jSONObject.put("TextView_minWidth", typedArrayObtainStyledAttributes3.getDimensionPixelSize(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.minWidth)), -1));
            jSONObject.put("TextView_gravity", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.gravity)), -1));
            jSONObject.put("TextView_hint", typedArrayObtainStyledAttributes3.getText(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.hint))));
            jSONObject.put("TextView_text", typedArrayObtainStyledAttributes3.getText(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.text))));
            jSONObject.put("TextView_scrollHorizontally", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.scrollHorizontally)), false));
            jSONObject.put("TextView_singleLine", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.singleLine)), false));
            jSONObject.put("TextView_ellipsize", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.ellipsize)), -1));
            jSONObject.put("TextView_marqueeRepeatLimit", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.marqueeRepeatLimit)), 3));
            jSONObject.put("TextView_includeFontPadding", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.includeFontPadding)), true));
            jSONObject.put("TextView_cursorVisible", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.maxLength)), true));
            jSONObject.put("TextView_maxLength", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.maxLength)), -1));
            jSONObject.put("TextView_textScaleX", typedArrayObtainStyledAttributes3.getFloat(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textScaleX)), 1.0f));
            jSONObject.put("TextView_freezesText", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.freezesText)), false));
            jSONObject.put("TextView_shadowColor", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.shadowColor)), 0));
            jSONObject.put("TextView_shadowDx", typedArrayObtainStyledAttributes3.getFloat(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.shadowDx)), 0.0f));
            jSONObject.put("TextView_shadowDy", typedArrayObtainStyledAttributes3.getFloat(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.shadowDy)), 0.0f));
            jSONObject.put("TextView_shadowRadius", typedArrayObtainStyledAttributes3.getFloat(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.shadowRadius)), 0.0f));
            jSONObject.put("TextView_enabled", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.enabled)), true));
            jSONObject.put("TextView_password", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.password)), false));
            jSONObject.put("TextView_lineSpacingExtra", typedArrayObtainStyledAttributes3.getDimensionPixelSize(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.lineSpacingExtra)), 0));
            jSONObject.put("TextView_lineSpacingMultiplier", typedArrayObtainStyledAttributes3.getFloat(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.lineSpacingMultiplier)), 1.0f));
            jSONObject.put("TextView_inputType", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.inputType)), 0));
            jSONObject.put("TextView_imeOptions", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.imeOptions)), 0));
            jSONObject.put("TextView_imeActionLabel", typedArrayObtainStyledAttributes3.getText(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.imeActionLabel))));
            jSONObject.put("TextView_imeActionId", typedArrayObtainStyledAttributes3.getInt(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.imeActionId)), 0));
            jSONObject.put("TextView_privateImeOptions", typedArrayObtainStyledAttributes3.getString(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.privateImeOptions))));
            try {
                jSONObject.put("TextView_textSelectHandleLeft", getDrawable(typedArrayObtainStyledAttributes3.getDrawable(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textSelectHandleLeft))), i + "_TextView_textSelectHandleLeft", null));
            } catch (Exception unused2) {
                jSONObject.put("TextView_textSelectHandleLeft", getDrawable(this.m_context.getResources().getDrawable(typedArrayObtainStyledAttributes3.getResourceId(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textSelectHandleLeft)), 0), this.m_theme), i + "_TextView_textSelectHandleLeft", null));
            }
            try {
                jSONObject.put("TextView_textSelectHandleRight", getDrawable(typedArrayObtainStyledAttributes3.getDrawable(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textSelectHandleRight))), i + "_TextView_textSelectHandleRight", null));
            } catch (Exception unused3) {
                jSONObject.put("TextView_textSelectHandleRight", getDrawable(this.m_context.getResources().getDrawable(typedArrayObtainStyledAttributes3.getResourceId(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textSelectHandleRight)), 0), this.m_theme), i + "_TextView_textSelectHandleRight", null));
            }
            try {
                jSONObject.put("TextView_textSelectHandle", getDrawable(typedArrayObtainStyledAttributes3.getDrawable(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textSelectHandle))), i + "_TextView_textSelectHandle", null));
            } catch (Exception unused4) {
                jSONObject.put("TextView_textSelectHandle", getDrawable(this.m_context.getResources().getDrawable(typedArrayObtainStyledAttributes3.getResourceId(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textSelectHandle)), 0), this.m_theme), i + "_TextView_textSelectHandle", null));
            }
            jSONObject.put("TextView_textIsSelectable", typedArrayObtainStyledAttributes3.getBoolean(arrayListFromIntArray2.indexOf(Integer.valueOf(R.attr.textIsSelectable)), false));
            typedArrayObtainStyledAttributes3.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    JSONObject extractImageViewInformation(int i, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            extractViewInformation(i, jSONObject, str);
            int[] iArr = {R.attr.src, R.attr.baselineAlignBottom, R.attr.adjustViewBounds, R.attr.maxWidth, R.attr.maxHeight, R.attr.scaleType, R.attr.cropToPadding, R.attr.tint};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(i, iArr);
            ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.src)));
            if (drawable != null) {
                jSONObject.put("ImageView_src", getDrawable(drawable, i + "_ImageView_src", null));
            }
            jSONObject.put("ImageView_baselineAlignBottom", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.baselineAlignBottom)), false));
            jSONObject.put("ImageView_adjustViewBounds", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.baselineAlignBottom)), false));
            jSONObject.put("ImageView_maxWidth", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.maxWidth)), Integer.MAX_VALUE));
            jSONObject.put("ImageView_maxHeight", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.maxHeight)), Integer.MAX_VALUE));
            int i2 = typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.scaleType)), -1);
            if (i2 >= 0) {
                jSONObject.put("ImageView_scaleType", this.sScaleTypeArray[i2]);
            }
            int i3 = typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.tint)), 0);
            if (i3 != 0) {
                jSONObject.put("ImageView_tint", i3);
            }
            jSONObject.put("ImageView_cropToPadding", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.cropToPadding)), false));
            typedArrayObtainStyledAttributes.recycle();
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    void extractCompoundButton(SimpleJsonWriter simpleJsonWriter, int i, String str, String str2) {
        JSONObject jSONObjectExtractTextAppearanceInformation = extractTextAppearanceInformation(i, str2);
        TypedValue typedValue = new TypedValue();
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this.m_context, this.m_theme);
        contextThemeWrapper.getTheme().resolveAttribute(i, typedValue, true);
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(typedValue.data, new int[]{R.attr.button});
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        if (drawable != null) {
            try {
                jSONObjectExtractTextAppearanceInformation.put("CompoundButton_button", getDrawable(drawable, i + "_CompoundButton_button", null));
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        simpleJsonWriter.name(str).value(jSONObjectExtractTextAppearanceInformation);
    }

    void extractProgressBarInfo(JSONObject jSONObject, int i) {
        try {
            int[] iArr = {R.attr.minWidth, R.attr.maxWidth, R.attr.minHeight, R.attr.maxHeight, R.attr.indeterminateDuration, R.attr.progressDrawable, R.attr.indeterminateDrawable};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(i, iArr);
            ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
            jSONObject.put("ProgressBar_indeterminateDuration", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.indeterminateDuration)), 4000));
            jSONObject.put("ProgressBar_minWidth", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.minWidth)), 24));
            jSONObject.put("ProgressBar_maxWidth", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.maxWidth)), 48));
            jSONObject.put("ProgressBar_minHeight", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.minHeight)), 24));
            jSONObject.put("ProgressBar_maxHeight", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.maxHeight)), 28));
            jSONObject.put("ProgressBar_progress_id", R.id.progress);
            jSONObject.put("ProgressBar_secondaryProgress_id", R.id.secondaryProgress);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.progressDrawable)));
            if (drawable != null) {
                jSONObject.put("ProgressBar_progressDrawable", getDrawable(drawable, i + "_ProgressBar_progressDrawable", null));
            }
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.indeterminateDrawable)));
            if (drawable2 != null) {
                jSONObject.put("ProgressBar_indeterminateDrawable", getDrawable(drawable2, i + "_ProgressBar_indeterminateDrawable", null));
            }
            typedArrayObtainStyledAttributes.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void extractProgressBar(SimpleJsonWriter simpleJsonWriter, int i, String str, String str2) {
        JSONObject jSONObjectExtractTextAppearanceInformation = extractTextAppearanceInformation(R.attr.progressBarStyle, str2);
        try {
            extractProgressBarInfo(jSONObjectExtractTextAppearanceInformation, i);
            simpleJsonWriter.name(str).value(jSONObjectExtractTextAppearanceInformation);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void extractAbsSeekBar(SimpleJsonWriter simpleJsonWriter) {
        JSONObject jSONObjectExtractTextAppearanceInformation = extractTextAppearanceInformation(R.attr.seekBarStyle, "QSlider");
        extractProgressBarInfo(jSONObjectExtractTextAppearanceInformation, R.attr.seekBarStyle);
        try {
            int[] iArr = {R.attr.thumb, R.attr.thumbOffset};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(R.attr.seekBarStyle, iArr);
            ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.thumb)));
            if (drawable != null) {
                jSONObjectExtractTextAppearanceInformation.put("SeekBar_thumb", getDrawable(drawable, "16842875_SeekBar_thumb", null));
            }
            jSONObjectExtractTextAppearanceInformation.put("SeekBar_thumbOffset", typedArrayObtainStyledAttributes.getDimensionPixelOffset(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.thumbOffset)), -1));
            typedArrayObtainStyledAttributes.recycle();
            simpleJsonWriter.name("seekBarStyle").value(jSONObjectExtractTextAppearanceInformation);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void extractSwitch(SimpleJsonWriter simpleJsonWriter) {
        JSONObject jSONObject = new JSONObject();
        try {
            int[] iArr = {R.attr.thumb, R.attr.track, R.attr.switchTextAppearance, R.attr.textOn, R.attr.textOff, R.attr.switchMinWidth, R.attr.switchPadding, R.attr.thumbTextPadding, R.attr.showText, R.attr.splitTrack};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(R.attr.switchStyle, iArr);
            ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.thumb)));
            if (drawable != null) {
                jSONObject.put("Switch_thumb", getDrawable(drawable, "16843839_Switch_thumb", null));
            }
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.track)));
            if (drawable2 != null) {
                jSONObject.put("Switch_track", getDrawable(drawable2, "16843839_Switch_track", null));
            }
            jSONObject.put("Switch_textOn", typedArrayObtainStyledAttributes.getText(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textOn))));
            jSONObject.put("Switch_textOff", typedArrayObtainStyledAttributes.getText(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.textOff))));
            jSONObject.put("Switch_switchMinWidth", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.switchMinWidth)), 0));
            jSONObject.put("Switch_switchPadding", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.switchPadding)), 0));
            jSONObject.put("Switch_thumbTextPadding", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.thumbTextPadding)), 0));
            jSONObject.put("Switch_showText", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.showText)), true));
            jSONObject.put("Switch_splitTrack", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.splitTrack)), false));
            jSONObject.put("Switch_switchTextAppearance", extractTextAppearance(typedArrayObtainStyledAttributes.getResourceId(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.switchTextAppearance)), -1), true));
            typedArrayObtainStyledAttributes.recycle();
            simpleJsonWriter.name("switchStyle").value(jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    JSONObject extractCheckedTextView(String str) {
        JSONObject jSONObjectExtractTextAppearanceInformation = extractTextAppearanceInformation(R.attr.checkedTextViewStyle, str);
        try {
            int[] iArr = {R.attr.checkMark};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(R.attr.switchStyle, iArr);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(getArrayListFromIntArray(iArr).indexOf(Integer.valueOf(R.attr.checkMark)));
            if (drawable != null) {
                jSONObjectExtractTextAppearanceInformation.put("CheckedTextView_checkMark", getDrawable(drawable, str + "_CheckedTextView_checkMark", null));
            }
            typedArrayObtainStyledAttributes.recycle();
            return jSONObjectExtractTextAppearanceInformation;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObjectExtractTextAppearanceInformation;
        }
    }

    private JSONObject extractItemStyle(int i, String str) {
        XmlResourceParser layout;
        int next;
        try {
            layout = this.m_context.getResources().getLayout(i);
            next = layout.next();
            while (next != 2 && next != 1) {
                next = layout.next();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (next != 2) {
            return null;
        }
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
        String name = layout.getName();
        if (name.equals("TextView")) {
            return extractTextAppearanceInformation(R.attr.textViewStyle, str, R.attr.textAppearanceListItem, attributeSetAsAttributeSet);
        }
        if (name.equals("CheckedTextView")) {
            return extractCheckedTextView(str);
        }
        return null;
    }

    private void extractItemsStyle(SimpleJsonWriter simpleJsonWriter) {
        try {
            JSONObject jSONObjectExtractItemStyle = extractItemStyle(R.layout.simple_list_item_1, "simple_list_item");
            if (jSONObjectExtractItemStyle != null) {
                simpleJsonWriter.name("simple_list_item").value(jSONObjectExtractItemStyle);
            }
            JSONObject jSONObjectExtractItemStyle2 = extractItemStyle(R.layout.simple_list_item_checked, "simple_list_item_checked");
            if (jSONObjectExtractItemStyle2 != null) {
                simpleJsonWriter.name("simple_list_item_checked").value(jSONObjectExtractItemStyle2);
            }
            JSONObject jSONObjectExtractItemStyle3 = extractItemStyle(R.layout.simple_list_item_multiple_choice, "simple_list_item_multiple_choice");
            if (jSONObjectExtractItemStyle3 != null) {
                simpleJsonWriter.name("simple_list_item_multiple_choice").value(jSONObjectExtractItemStyle3);
            }
            JSONObject jSONObjectExtractItemStyle4 = extractItemStyle(R.layout.simple_list_item_single_choice, "simple_list_item_single_choice");
            if (jSONObjectExtractItemStyle4 != null) {
                simpleJsonWriter.name("simple_list_item_single_choice").value(jSONObjectExtractItemStyle4);
            }
            JSONObject jSONObjectExtractItemStyle5 = extractItemStyle(R.layout.simple_spinner_item, "simple_spinner_item");
            if (jSONObjectExtractItemStyle5 != null) {
                simpleJsonWriter.name("simple_spinner_item").value(jSONObjectExtractItemStyle5);
            }
            JSONObject jSONObjectExtractItemStyle6 = extractItemStyle(R.layout.simple_spinner_dropdown_item, "simple_spinner_dropdown_item");
            if (jSONObjectExtractItemStyle6 != null) {
                simpleJsonWriter.name("simple_spinner_dropdown_item").value(jSONObjectExtractItemStyle6);
            }
            JSONObject jSONObjectExtractItemStyle7 = extractItemStyle(R.layout.simple_dropdown_item_1line, "simple_dropdown_item_1line");
            if (jSONObjectExtractItemStyle7 != null) {
                simpleJsonWriter.name("simple_dropdown_item_1line").value(jSONObjectExtractItemStyle7);
            }
            JSONObject jSONObjectExtractItemStyle8 = extractItemStyle(R.layout.simple_selectable_list_item, "simple_selectable_list_item");
            if (jSONObjectExtractItemStyle8 != null) {
                simpleJsonWriter.name("simple_selectable_list_item").value(jSONObjectExtractItemStyle8);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void extractListView(SimpleJsonWriter simpleJsonWriter) {
        JSONObject jSONObjectExtractTextAppearanceInformation = extractTextAppearanceInformation(R.attr.listViewStyle, "QListView");
        try {
            int[] iArr = {R.attr.divider, R.attr.dividerHeight};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(R.attr.listViewStyle, iArr);
            ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.divider)));
            if (drawable != null) {
                jSONObjectExtractTextAppearanceInformation.put("ListView_divider", getDrawable(drawable, "16842868_ListView_divider", null));
            }
            jSONObjectExtractTextAppearanceInformation.put("ListView_dividerHeight", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.dividerHeight)), 0));
            typedArrayObtainStyledAttributes.recycle();
            simpleJsonWriter.name("listViewStyle").value(jSONObjectExtractTextAppearanceInformation);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void extractCalendar(SimpleJsonWriter simpleJsonWriter) {
        JSONObject jSONObjectExtractTextAppearanceInformation = extractTextAppearanceInformation(R.attr.calendarViewStyle, "QCalendarWidget");
        try {
            int[] iArr = {R.attr.firstDayOfWeek, R.attr.focusedMonthDateColor, R.attr.selectedWeekBackgroundColor, R.attr.showWeekNumber, R.attr.shownWeekCount, R.attr.unfocusedMonthDateColor, R.attr.weekNumberColor, R.attr.weekSeparatorLineColor, R.attr.selectedDateVerticalBar, R.attr.dateTextAppearance, R.attr.weekDayTextAppearance};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(R.attr.calendarViewStyle, iArr);
            ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.selectedDateVerticalBar)));
            if (drawable != null) {
                jSONObjectExtractTextAppearanceInformation.put("CalendarView_selectedDateVerticalBar", getDrawable(drawable, "16843613_CalendarView_selectedDateVerticalBar", null));
            }
            jSONObjectExtractTextAppearanceInformation.put("CalendarView_dateTextAppearance", extractTextAppearance(typedArrayObtainStyledAttributes.getResourceId(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.dateTextAppearance)), -1), true));
            jSONObjectExtractTextAppearanceInformation.put("CalendarView_weekDayTextAppearance", extractTextAppearance(typedArrayObtainStyledAttributes.getResourceId(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.weekDayTextAppearance)), -1), true));
            jSONObjectExtractTextAppearanceInformation.put("CalendarView_firstDayOfWeek", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.firstDayOfWeek)), 0));
            jSONObjectExtractTextAppearanceInformation.put("CalendarView_focusedMonthDateColor", typedArrayObtainStyledAttributes.getColor(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.focusedMonthDateColor)), 0));
            jSONObjectExtractTextAppearanceInformation.put("CalendarView_selectedWeekBackgroundColor", typedArrayObtainStyledAttributes.getColor(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.selectedWeekBackgroundColor)), 0));
            jSONObjectExtractTextAppearanceInformation.put("CalendarView_showWeekNumber", typedArrayObtainStyledAttributes.getBoolean(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.showWeekNumber)), true));
            jSONObjectExtractTextAppearanceInformation.put("CalendarView_shownWeekCount", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.shownWeekCount)), 6));
            jSONObjectExtractTextAppearanceInformation.put("CalendarView_unfocusedMonthDateColor", typedArrayObtainStyledAttributes.getColor(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.unfocusedMonthDateColor)), 0));
            jSONObjectExtractTextAppearanceInformation.put("CalendarView_weekNumberColor", typedArrayObtainStyledAttributes.getColor(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.weekNumberColor)), 0));
            jSONObjectExtractTextAppearanceInformation.put("CalendarView_weekSeparatorLineColor", typedArrayObtainStyledAttributes.getColor(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.weekSeparatorLineColor)), 0));
            typedArrayObtainStyledAttributes.recycle();
            simpleJsonWriter.name("calendarViewStyle").value(jSONObjectExtractTextAppearanceInformation);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void extractToolBar(SimpleJsonWriter simpleJsonWriter) {
        JSONObject jSONObjectExtractTextAppearanceInformation = extractTextAppearanceInformation(R.attr.toolbarStyle, "QToolBar");
        try {
            int[] iArr = {R.attr.background, R.attr.backgroundStacked, R.attr.backgroundSplit, R.attr.divider, R.attr.itemPadding};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(R.attr.toolbarStyle, iArr);
            ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.background)));
            if (drawable != null) {
                jSONObjectExtractTextAppearanceInformation.put("ActionBar_background", getDrawable(drawable, "16843946_ActionBar_background", null));
            }
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.backgroundStacked)));
            if (drawable2 != null) {
                jSONObjectExtractTextAppearanceInformation.put("ActionBar_backgroundStacked", getDrawable(drawable2, "16843946_ActionBar_backgroundStacked", null));
            }
            Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.backgroundSplit)));
            if (drawable3 != null) {
                jSONObjectExtractTextAppearanceInformation.put("ActionBar_backgroundSplit", getDrawable(drawable3, "16843946_ActionBar_backgroundSplit", null));
            }
            Drawable drawable4 = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.divider)));
            if (drawable4 != null) {
                jSONObjectExtractTextAppearanceInformation.put("ActionBar_divider", getDrawable(drawable4, "16843946_ActionBar_divider", null));
            }
            jSONObjectExtractTextAppearanceInformation.put("ActionBar_itemPadding", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.itemPadding)), 0));
            typedArrayObtainStyledAttributes.recycle();
            simpleJsonWriter.name("actionBarStyle").value(jSONObjectExtractTextAppearanceInformation);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void extractTabBar(SimpleJsonWriter simpleJsonWriter) {
        JSONObject jSONObjectExtractTextAppearanceInformation = extractTextAppearanceInformation(R.attr.actionBarTabBarStyle, "QTabBar");
        try {
            int[] iArr = {R.attr.showDividers, R.attr.dividerPadding, R.attr.divider};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(R.attr.actionBarTabStyle, iArr);
            ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.divider)));
            if (drawable != null) {
                jSONObjectExtractTextAppearanceInformation.put("LinearLayout_divider", getDrawable(drawable, "16843507_LinearLayout_divider", null));
            }
            jSONObjectExtractTextAppearanceInformation.put("LinearLayout_showDividers", typedArrayObtainStyledAttributes.getInt(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.showDividers)), 0));
            jSONObjectExtractTextAppearanceInformation.put("LinearLayout_dividerPadding", typedArrayObtainStyledAttributes.getDimensionPixelSize(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.dividerPadding)), 0));
            typedArrayObtainStyledAttributes.recycle();
            simpleJsonWriter.name("actionBarTabBarStyle").value(jSONObjectExtractTextAppearanceInformation);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void extractWindow(SimpleJsonWriter simpleJsonWriter) {
        JSONObject jSONObject = new JSONObject();
        try {
            int[] iArr = {R.attr.windowBackground, R.attr.windowFrame};
            Arrays.sort(iArr);
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(R.attr.popupWindowStyle, iArr);
            ArrayList<Integer> arrayListFromIntArray = getArrayListFromIntArray(iArr);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.windowBackground)));
            if (drawable != null) {
                jSONObject.put("Window_windowBackground", getDrawable(drawable, "16842870_Window_windowBackground", null));
            }
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(arrayListFromIntArray.indexOf(Integer.valueOf(R.attr.windowFrame)));
            if (drawable2 != null) {
                jSONObject.put("Window_windowFrame", getDrawable(drawable2, "16842870_Window_windowFrame", null));
            }
            typedArrayObtainStyledAttributes.recycle();
            simpleJsonWriter.name("windowStyle").value(jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private JSONObject extractDefaultPalette() {
        JSONObject jSONObjectExtractTextAppearance = extractTextAppearance(R.attr.textAppearance);
        try {
            jSONObjectExtractTextAppearance.put("defaultBackgroundColor", this.defaultBackgroundColor);
            jSONObjectExtractTextAppearance.put("defaultTextColorPrimary", this.defaultTextColor);
            return jSONObjectExtractTextAppearance;
        } catch (Exception e) {
            e.printStackTrace();
            return jSONObjectExtractTextAppearance;
        }
    }

    static class SimpleJsonWriter {
        private boolean m_addComma = false;
        private int m_indentLevel = 0;
        private final OutputStreamWriter m_writer;

        SimpleJsonWriter(String str) throws IOException {
            this.m_writer = new OutputStreamWriter(Files.newOutputStream(Paths.get(str, new String[0]), new OpenOption[0]));
        }

        void close() throws IOException {
            this.m_writer.close();
        }

        private void writeIndent() throws IOException {
            this.m_writer.write(" ", 0, this.m_indentLevel);
        }

        void beginObject() throws IOException {
            writeIndent();
            this.m_writer.write("{\n");
            this.m_indentLevel++;
            this.m_addComma = false;
        }

        void endObject() throws IOException {
            this.m_writer.write("\n");
            writeIndent();
            this.m_writer.write("}\n");
            this.m_indentLevel--;
            this.m_addComma = false;
        }

        SimpleJsonWriter name(String str) throws IOException {
            if (this.m_addComma) {
                this.m_writer.write(",\n");
            }
            writeIndent();
            this.m_writer.write(JSONObject.quote(str) + ": ");
            this.m_addComma = true;
            return this;
        }

        void value(JSONObject jSONObject) throws IOException {
            this.m_writer.write(jSONObject.toString());
        }
    }

    static class DrawableCache {
        Object drawable;
        JSONObject object;

        DrawableCache(JSONObject jSONObject, Object obj) {
            this.object = jSONObject;
            this.drawable = obj;
        }
    }
}
