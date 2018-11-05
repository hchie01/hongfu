<?php
/**
 * functions.php
 *
 * @copyright  2017 opencart.cn - All Rights Reserved
 * @link       http://www.guangdawangluo.com
 * @author     Edward Yang <yangjin@opencart.cn>
 * @created    2/23/17 10:32
 * @modified   2/23/17 10:32
 */

// OpenCart version type check
if (!function_exists('is_pro')) {
    /**
     * @return bool
     */
    function is_pro()
    {
        return (defined('OCTYPE') && strtoupper(OCTYPE) == 'PRO');
    }
}

if (!function_exists('is_free')) {
    /**
     * @return bool
     */
    function is_free()
    {
        return (defined('OCTYPE') && strtoupper(OCTYPE) == 'FREE');
    }
}


if (!function_exists('is_free_or_pro')) {

    function is_free_or_pro()
    {
        $freeOrPro = (defined('OCTYPE') && OCTYPE == 'FREE') || (defined('OCTYPE') && OCTYPE == 'PRO');

        return $freeOrPro;
    }
}

if (!function_exists('is_ft')) {
    /**
     * @return bool
     */
    function is_ft()
    {
        return (defined('OCTYPE') && strtoupper(OCTYPE) == 'FT');
    }
}

if (!function_exists('is_std')) {
    /**
     * @return bool
     */
    function is_std()
    {
        return !defined('OCTYPE');
    }
}

if (!function_exists('is_admin')) {
    /**
     * Check current is admin or catalog
     *
     * @return string
     */
    function is_admin()
    {
        return defined('HTTPS_CATALOG');
    }
}

if (!function_exists('is_debug')) {
    /**
     * Check current env is debug or not
     *
     * @return string
     */
    function is_debug()
    {
        return defined('DEBUG') && DEBUG;
    }
}


if (!function_exists('d')) {
    /**
     * Dump the passed variables and end the script.
     *
     * @param  mixed
     * @return void
     */
    function d(...$args)
    {
        foreach ($args as $x) {
            (new \Illuminate\Support\Debug\Dumper())->dump($x);
        }
    }
}

if (!function_exists('sub_string')) {
    /**
     * @param $string
     * @param $length
     * @param string $dot
     * @return string
     */
    function sub_string($string, $length, $dot = '...')
    {
        $strLength = strlen($string);
        if ($length <= 0) {
            return $string;
        } elseif ($strLength <= $length) {
            return $string;
        }
        return utf8_substr($string, 0, $length) . $dot;
    }
}

if (!function_exists('format_date')) {
    /**
     * @param $format
     * @param null $timestamp
     * @return mixed
     */
    function format_date($format, $timestamp = null)
    {
        $timestamp = $timestamp ?: time();
        $datetime = new Utils\Datetime();
        $baseDatetime = date('Y-m-d H:i:s', $timestamp);
        $datetime = $datetime->convert($baseDatetime, '', $format);
        return $datetime;
    }
}

if (!function_exists('render_csv')) {
    /**
     * Convert a value to studly caps case.
     *
     * @param  string $value
     * @return string
     */
    function render_csv($value)
    {
        $filename = date('Ymd') . '.csv';
        header("Content-type:text/csv");
        header("Content-Disposition:attachment;filename=" . $filename);
        header('Cache-Control:must-revalidate,post-check=0,pre-check=0');
        header('Expires:0');
        header('Pragma:public');
        echo $value;
        exit;
    }
}


if (!function_exists('registry')) {
    /**
     * Get Registry Instance
     *
     * @param null $type
     * @return mixed|Registry
     * @throws Exception
     */
    function registry($type = null)
    {
        $availableTypes = ['config', 'session', 'document', 'url', 'currency'];
        if ($type && !in_array($type, $availableTypes)) {
            throw new \Exception("Invalid registry type {$type}");
        }
        if ($type) {
            return Registry::getSingleton()->get($type);
        }
        return Registry::getSingleton();
    }
}

if (!function_exists('config')) {
    /**
     * Get config values through keys
     *
     * @param string $key
     * @return mixed|null
     * @throws Exception
     */
    function config($key = '')
    {
        if (empty($key)) {
            return null;
        }
        $segments = explode('.', $key);
        $value = registry('config')->get($segments[0]);
        if (count($segments) == 1 || !$value) {
            return $value;
        }
        array_shift($segments);
        return array_get($value, implode('.', $segments));
    }
}

if (!function_exists('session')) {
    /**
     * Get Session Instance
     *
     * @return Session
     * @throws Exception
     */
    function session()
    {
        return registry('session');
    }
}

if (!function_exists('document')) {
    /**
     * Get Document instance
     *
     * @return Document
     * @throws Exception
     */
    function document()
    {
        return registry('document');
    }
}

if (!function_exists('url')) {
    /**
     * Get Url instance
     *
     * @return Url
     * @throws Exception
     */
    function url()
    {
        return registry('url');
    }
}

if (!function_exists('currency')) {
    /**
     * Get Currency instance
     *
     * @return Currency
     * @throws Exception
     */
    function currency()
    {
        return registry('currency');
    }
}

if (!function_exists('debug_bar')) {
    /**
     * Get DebugBar Renderer
     *
     * @return \DebugBar\JavascriptRenderer
     * @throws Exception
     */
    function debug_bar()
    {
        return registry()->get('debug_bar');
    }
}


if (!function_exists('language_code')) {
    /**
     * Get current language code
     *
     * @return string
     * @throws Exception
     */
    function language_code()
    {
        return strtolower(array_get(session()->data, 'language'));
    }
}

if (!function_exists('is_zh_cn')) {
    /**
     * Check if the language is zh_cn
     *
     * @throws Exception
     */
    function is_zh_cn()
    {
        return language_code() == 'zh-cn';
    }
}

if (!function_exists('image_resize')) {
    /**
     * @param string $image
     * @param int $width
     * @param int $height
     * @return mixed
     * @throws Exception
     */
    function image_resize($image = 'placeholder.png', $width = 100, $height = 100)
    {
        registry()->get('load')->model('tool/image');
        return registry()->get('model_tool_image')->resize($image, $width, $height);
    }
}

if (!function_exists('get_firstname')) {
    /**
     * Parse first name based on full name.
     *
     * @param string $fullName
     * @return bool|string
     */
    function get_firstname($fullName = '')
    {
        $arrFullName = explode(' ', $fullName);
        $firstName = isset($arrFullName[0]) ? isset($arrFullName[0]) : '';
        return $firstName;
    }
}

if (!function_exists('get_lastname')) {
    /**
     * Parse last name based on full name.
     *
     * @param string $fullName
     * @return bool|string
     */
    function get_lastname($fullName = '')
    {
        $arrFullName = explode(' ', $fullName);
        $lastName = isset($arrFullName[1]) ? isset($arrFullName[1]) : '';
        return $lastName;
    }
}

if (!function_exists('address_format')) {
    /**
     * Format address.
     *
     * @param array $address
     * @param string $format
     * @param string $prefix
     * @return mixed
     */
    function address_format($address = array(), $format = '', $prefix = '')
    {
        if (!$format) {
            if (is_pro() || is_free()) {
                $format = '{fullname} ({telephone})' . "\n" . '{zone}{city}{county}{address_1} {company} {postcode}';
            } else {
                $format = '{fullname} ({telephone})' . "\n" . '{country}{zone}{city}{county}{address_1} {company} {postcode}';
            }
        }

        if ($prefix) {
            $prefix .= '_';
        }

        $find = array(
            '{fullname}',
            '{telephone}',
            '{company}',
            '{address_1}',
            '{address_2}',
            '{county}',
            '{city}',
            '{postcode}',
            '{zone}',
            '{zone_code}',
            '{country}',
        );

        $replace = array(
            'fullname'  => $address[$prefix . 'fullname'],
            'telephone' => $address[$prefix . 'telephone'],
            'company'   => $address[$prefix . 'company'],
            'address_1' => $address[$prefix . 'address_1'],
            'address_2' => $address[$prefix . 'address_2'],
            'county'    => $address[$prefix . 'county'],
            'city'      => $address[$prefix . 'city'],
            'postcode'  => $address[$prefix . 'postcode'],
            'zone'      => $address[$prefix . 'zone'],
            'zone_code' => $address[$prefix . 'zone_code'],
            'country'   => $address[$prefix . 'country']
        );

        $strAddress = str_replace(array("\r\n", "\r", "\n"), '<br />', preg_replace(array("/\s\s+/", "/\r\r+/", "/\n\n+/"), '<br />', trim(str_replace($find, $replace, $format))));

        return $strAddress;
    }
}
