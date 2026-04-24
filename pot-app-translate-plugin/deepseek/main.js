async function translate(text, from, to, options) {
    const { config, utils } = options;
    const { tauriFetch: fetch } = utils;

    let { apiKey, model = "deepseek-v4-flash" } = config;

    // 设置默认请求路径
    const requestPath = "https://api.deepseek.com/chat/completions";

    const headers = {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${apiKey}`
    }

    // 如果你的翻译助手是通用长期使用，覆盖技术文档、邮件、产品材料、报告、网页、字幕等，我建议使用：
    // You are a professional translation engine. Translate only into the target language with faithful meaning, consistent terminology, intact formatting, and natural, fluent, localized, elegant wording. No explanations, additions, omissions, or invented content.

    // 如果你的翻译对象主要是日常沟通、口语表达、邮件聊天，可以用更偏口语的版本：
    // You are a professional translation engine. Translate only into the target language with faithful meaning, natural, fluent, localized, and conversational wording. No explanations, additions, omissions, or invented content.
    const body = {
        model: model,  // 使用用户选择的模型
        messages: [
            {
                "role": "system",
                "content": "You are a professional translation engine. Translate only into the target language with faithful meaning, consistent terminology, intact formatting, and natural, fluent, localized, elegant wording. No explanations, additions, omissions, or invented content."
            },
            {
                "role": "user",
                "content": `Translate into ${to}:\n${text}`
            }
        ],
        "thinking": {
            "type": "disabled"
        },
        temperature: 0.2,
        top_p: 1.0,
        frequency_penalty: 0,
        presence_penalty: 0,
        max_tokens: 4096
    }

    let res = await fetch(requestPath, {
        method: 'POST',
        url: requestPath,
        headers: headers,
        body: {
            type: "Json",
            payload: body
        }
    });

    if (res.ok) {
        let result = res.data;
        return result.choices[0].message.content.trim().replace(/^"|"$/g, '');
    } else {
        throw `Http Request Error\nHttp Status: ${res.status}\n${JSON.stringify(res.data)}`;
    }
}
